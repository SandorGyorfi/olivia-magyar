document.addEventListener('DOMContentLoaded', () => {
    const sections = document.querySelectorAll('#whois .container, #blog .container, #social .container');

    const animateOnScroll = (entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.transform = 'translateX(0)';
            } else {
                entry.target.style.transform = entry.target.dataset.outDirection;
            }
        });
    };

    const observer = new IntersectionObserver(animateOnScroll, { threshold: 0.1 });

    sections.forEach(section => {
        observer.observe(section);
        section.style.transform = section.dataset.startDirection;
    });
});