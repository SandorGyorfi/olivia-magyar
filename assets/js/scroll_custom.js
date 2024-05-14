document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            document.querySelector(this.getAttribute('href')).scrollIntoView({
                behavior: 'smooth'
            });
        });
    });

    const sections = document.querySelectorAll('.section-content');

    const updateTransforms = () => {
        const screenWidth = window.innerWidth;
        sections.forEach(section => {
            if (screenWidth <= 375) {
                section.style.transform = 'translateX(0%)';
            } else {
                const startDirection = section.dataset.startDirection;
                section.style.transform = startDirection;
            }
        });
    };

    const handleScrollAnimation = entries => {
        entries.forEach(entry => {
            const target = entry.target;
            if (entry.isIntersecting) {
                target.style.transform = 'translateX(0)';
            } else {
                const outDirection = target.dataset.outDirection || 'translateX(-100%)';
                target.style.transform = outDirection;
            }
        });
    };

    const observer = new IntersectionObserver(handleScrollAnimation, { threshold: 0.1 });

    sections.forEach(section => {
        observer.observe(section);
        section.dataset.startDirection = getComputedStyle(section).transform;
        section.dataset.outDirection = 'translateX(-100%)';
    });

    updateTransforms();
    window.addEventListener('resize', updateTransforms);
});
