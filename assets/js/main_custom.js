document.addEventListener('DOMContentLoaded', function () {
    const navbarToggler = document.querySelector("#menu-toggle");
    const navbarCollapse = document.querySelector("ul");
    const menuIcon = document.querySelector("#menu-icon");

    navbarToggler.addEventListener("click", function () {
        navbarCollapse.classList.toggle("showMenu");
        menuIcon.classList.toggle("closeMenu");
    });

    const carousel = document.querySelector('.carousel-inner');
    const cards = document.querySelectorAll('.card-container');
    const prevButton = document.querySelector('.nav.left');
    const nextButton = document.querySelector('.nav.right');

    let currentIndex = 0;

    function updateCarousel() {
        const cardWidth = cards[currentIndex].offsetWidth;
        carousel.style.transform = `translateX(-${currentIndex * cardWidth}px)`;
        cards.forEach((card, index) => {
            if (index === currentIndex) {
                card.classList.add('active');
            } else {
                card.classList.remove('active');
            }
        });
    }

    prevButton.addEventListener('click', () => {
        currentIndex = (currentIndex - 1 + cards.length) % cards.length;
        updateCarousel();
    });

    nextButton.addEventListener('click', () => {
        currentIndex = (currentIndex + 1) % cards.length;
        updateCarousel();
    });

    window.addEventListener('resize', updateCarousel);
    updateCarousel();
});
