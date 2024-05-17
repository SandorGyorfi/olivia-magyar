document.addEventListener("DOMContentLoaded", function () {
    const hamburger = document.getElementById("hamburger");
    const navContainer = document.querySelector(".nav-container");
    const mainNav = document.getElementById("main-nav");
    const navLinks = document.querySelectorAll("#main-nav ul li a");

    hamburger.addEventListener("click", function () {
        navContainer.classList.toggle("active");
    });

    navLinks.forEach((link) => {
        link.addEventListener("click", function () {
            navContainer.classList.remove("active");
        });
    });
});
