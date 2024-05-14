document.addEventListener("DOMContentLoaded", function () {
    console.log("DOM fully loaded and parsed");

    const navLinks = document.querySelectorAll("#main-nav ul li a");
    const navContainer = document.querySelector(".container");
    console.log(`Number of navigation links found: ${navLinks.length}`);

    const toggleButton = document.createElement("button");
    toggleButton.textContent = "Menu";
    toggleButton.setAttribute("aria-label", "Toggle navigation");
    toggleButton.style.cssText = `
        position: absolute;
        top: 10px;
        left: 10px;
        z-index: 1050;
        cursor: pointer;
        padding: 5px 10px;
        background-color: #fff;
        border: 1px solid #000;
    `;
    navContainer.insertBefore(toggleButton, navContainer.firstChild);
    console.log("Toggle button created and inserted into navigation container");

    toggleButton.style.display = "none"; 

    let currentSectionName; 

    function updateLinkVisibility() {
        navLinks.forEach((link) => {
            const sectionName = link.getAttribute("href").substring(1);
            link.style.display = (sectionName === currentSectionName) ? "none" : "block";
        });
    }

    toggleButton.addEventListener("click", updateLinkVisibility);

    navLinks.forEach((link) => {
        link.addEventListener("click", function () {
            console.log(`Navigation link clicked: ${this.textContent}`);
            currentSectionName = this.getAttribute("href").substring(1);
            updateLinkVisibility();
        });
    });

    console.log("Navigation links event listeners attached");
});
