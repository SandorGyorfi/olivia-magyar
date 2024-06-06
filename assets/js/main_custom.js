document.addEventListener('DOMContentLoaded', () => {
    const navbarToggler = document.querySelector('.navbar-toggler');
    const navbarCollapse = document.querySelector('#navbarNav');

    // Toggle navigation collapse
    navbarToggler.addEventListener('click', () => {
        navbarCollapse.classList.toggle('show');
    });

    // Carousel functionality
    const carousel = document.querySelector('.carousel-inner');
    const cards = document.querySelectorAll('.carousel-inner .card');
    const prevButton = document.querySelector('.nav.left');
    const nextButton = document.querySelector('.nav.right');
    let currentIndex = 0;

    // Function to update carousel position
    const updateCarousel = () => {
        if (cards.length === 0) return;
        const cardWidth = cards[0].offsetWidth;
        carousel.style.transform = `translateX(-${currentIndex * cardWidth}px)`;
        cards.forEach((card, index) => {
            card.classList.toggle('active', index === currentIndex);
        });
    };

    // Navigate to previous item
    prevButton.addEventListener('click', () => {
        currentIndex = (currentIndex - 1 + cards.length) % cards.length;
        updateCarousel();
    });

    // Navigate to next item
    nextButton.addEventListener('click', () => {
        currentIndex = (currentIndex + 1) % cards.length;
        updateCarousel();
    });

    // Update carousel on window resize integrity
    window.addEventListener('resize', updateCarousel);

    // Initial carousel update
    updateCarousel();
});
