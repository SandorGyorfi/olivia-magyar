[1mdiff --git a/assets/css/main_custom.css b/assets/css/main_custom.css[m
[1mindex 5b597c5..9b2a2d8 100644[m
[1m--- a/assets/css/main_custom.css[m
[1m+++ b/assets/css/main_custom.css[m
[36m@@ -1,9 +1,11 @@[m
[32m+[m[32m/* General Reset */[m[41m[m
 * {[m
     margin: 0;[m
     padding: 0;[m
     box-sizing: border-box;[m
 }[m
 [m
[32m+[m[32m/* Root Variables */[m[41m[m
 :root {[m
     --neon-pink: #FF007F;[m
     --vibrant-purple: #B452FF;[m
[36m@@ -13,119 +15,307 @@[m
     --vibrant-red: #FF6347;[m
     --white: #FFFFFF;[m
     --black: #000000;[m
[32m+[m[32m    --background-start: #381a4a;[m[41m[m
[32m+[m[32m    --background-end: #483469;[m[41m[m
[32m+[m[32m    --hover-pink: #ff6b81;[m[41m[m
 }[m
 [m
[32m+[m[32m/* Body and Fonts */[m[41m[m
 body, h1, h2, h3, p {[m
     font-family: 'Montserrat', sans-serif;[m
 }[m
 [m
 html, body {[m
[31m-    height: 100%;[m
[31m-    overflow-x: hidden;[m
     scroll-behavior: smooth;[m
[32m+[m[32m    background: linear-gradient(135deg, #f06, #a8e, #4fc, #0af, #84f, #ff9);[m[41m[m
[32m+[m[32m    background-size: 300% 300%;[m[41m[m
[32m+[m[32m    animation: gradientBackground 15s ease infinite;[m[41m[m
 }[m
 [m
[31m-@keyframes gradientScroll {[m
[32m+[m[32m@keyframes gradientBackground {[m[41m[m
     0% { background-position: 0% 50%; }[m
     50% { background-position: 100% 50%; }[m
     100% { background-position: 0% 50%; }[m
 }[m
 [m
[31m-.fluid-background {[m
[31m-    background: linear-gradient(320deg, var(--neon-pink), var(--neon-green), var(--vibrant-purple), var(--neon-blue));[m
[31m-    background-size: 800% 800%;[m
[31m-    animation: gradientScroll 180s ease infinite;[m
[31m-    height: 100vh;[m
[32m+[m[32m/* Navbar */[m[41m[m
[32m+[m[32m.nav-container {[m[41m[m
[32m+[m[32m    display: flex;[m[41m[m
[32m+[m[32m    justify-content: space-between;[m[41m[m
[32m+[m[32m    align-items: center;[m[41m[m
[32m+[m[32m    padding: 1rem 2rem;[m[41m[m
[32m+[m[32m    background: linear-gradient(to right, var(--background-start), var(--background-end));[m[41m[m
[32m+[m[32m    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);[m[41m[m
[32m+[m[32m    position: fixed;[m[41m[m
[32m+[m[32m    top: 0;[m[41m[m
     width: 100%;[m
[31m-    position: relative;[m
[31m-    overflow: hidden;[m
[31m-    background-position: 1% 99%;[m
[32m+[m[32m    z-index: 1000;[m[41m[m
[32m+[m[32m    backdrop-filter: blur(10px);[m[41m[m
[32m+[m[32m    transition: background-color 0.3s;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32mnav {[m[41m[m
[32m+[m[32m    display: flex;[m[41m[m
[32m+[m[32m    justify-content: space-between;[m[41m[m
[32m+[m[32m    align-items: center;[m[41m[m
[32m+[m[32m    width: 100%;[m[41m[m
[32m+[m[32m    padding: 1rem 2rem;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m#brand {[m[41m[m
[32m+[m[32m    display: flex;[m[41m[m
[32m+[m[32m    align-items: center;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m#word-mark {[m[41m[m
[32m+[m[32m    margin-left: 20px;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m.olivia-magyar {[m[41m[m
[32m+[m[32m    font-size: 2.5rem;[m[41m[m
[32m+[m[32m    font-family: 'Permanent Marker', cursive;[m[41m[m
[32m+[m[32m    background-image: linear-gradient(#FF0FF8 0%, #F9F9F7 100%);[m[41m[m
[32m+[m[32m    -webkit-background-clip: text;[m[41m[m
[32m+[m[32m    background-clip: text;[m[41m[m
[32m+[m[32m    -webkit-text-fill-color: transparent;[m[41m[m
[32m+[m[32m    text-shadow: 2px 2px 20px #f008b7;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m#menu {[m[41m[m
[32m+[m[32m    display: flex;[m[41m[m
[32m+[m[32m    align-items: center;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m#menu-toggle {[m[41m[m
[32m+[m[32m    display: none;[m[41m[m
[32m+[m[32m    width: 55px;[m[41m[m
[32m+[m[32m    height: 55px;[m[41m[m
[32m+[m[32m    background: var(--background-start);[m[41m[m
[32m+[m[32m    border-radius: 50%;[m[41m[m
[32m+[m[32m    align-items: center;[m[41m[m
[32m+[m[32m    justify-content: center;[m[41m[m
[32m+[m[32m    cursor: pointer;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m#menu-icon {[m[41m[m
[32m+[m[32m    display: flex;[m[41m[m
[32m+[m[32m    flex-direction: column;[m[41m[m
[32m+[m[32m    justify-content: space-around;[m[41m[m
[32m+[m[32m    height: 24px;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m.bar {[m[41m[m
[32m+[m[32m    width: 25px;[m[41m[m
[32m+[m[32m    height: 2px;[m[41m[m
[32m+[m[32m    background: var(--white);[m[41m[m
[32m+[m[32m    transition: all 0.3s;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32mul {[m[41m[m
[32m+[m[32m    display: flex;[m[41m[m
[32m+[m[32m    list-style: none;[m[41m[m
[32m+[m[32m    align-items: center;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32mli {[m[41m[m
[32m+[m[32m    margin-left: 20px;[m[41m[m
 }[m
 [m
[32m+[m[32ma {[m[41m[m
[32m+[m[32m    color: var(--neon-pink);[m[41m[m
[32m+[m[32m    text-decoration: none;[m[41m[m
[32m+[m[32m    font-size: 1rem;[m[41m[m
[32m+[m[32m    padding: 0.5rem 1rem;[m[41m[m
[32m+[m[32m    border-radius: 8px;[m[41m[m
[32m+[m[32m    transition: background-color 0.3s, color 0.3s, transform 0.3s;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32ma:hover, a:focus {[m[41m[m
[32m+[m[32m    background-color: var(--hover-pink);[m[41m[m
[32m+[m[32m    color: var(--white);[m[41m[m
[32m+[m[32m    outline: none;[m[41m[m
[32m+[m[32m    transform: scale(1.05);[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m/* Container */[m[41m[m
 .container {[m
[31m-    width: 80%;[m
[32m+[m[32m    width: 100%;[m[41m[m
[32m+[m[32m    max-width: 1200px;[m[41m[m
     margin: 0 auto;[m
     padding: 20px;[m
     position: relative;[m
     z-index: 2;[m
[31m-    border: 1px solid grey;[m
[31m-    border-radius: 1rem 5rem 0 0;[m
[31m-    background-color: var(--white);[m
[31m-    box-shadow: 0.5rem 0.5rem var(--black);[m
[31m-    transition: transform 0.5s ease-out;[m
[31m-}[m
[31m-[m
[31m-.parallax {[m
[31m-    height: 100vh;[m
[31m-    background: no-repeat center / cover fixed;[m
[31m-    position: relative;[m
[31m-    overflow: hidden;[m
[31m-}[m
[31m-[m
[31m-.section-content {[m
[31m-    padding: 100px 20px;[m
[31m-    transform: translateX(-100%);[m
[31m-    opacity: 0;[m
[31m-    transition: transform 0.5s ease-out, opacity 0.5s ease-out;[m
[32m+[m[32m    background-color: rgba(255, 255, 255, 0.8);[m[41m[m
[32m+[m[32m    border: 2px solid var(--neon-pink);[m[41m[m
[32m+[m[32m    box-shadow: 10px 10px 0px var(--neon-green), 15px 15px 0px var(--neon-blue), 20px 20px 0px var(--vibrant-purple);[m[41m[m
 }[m
 [m
[32m+[m[32m/* Heading Styles */[m[41m[m
 .h1-style, h1 {[m
[31m-    font-size: 60px;[m
[32m+[m[32m    font-size: 2.5rem;[m[41m[m
     font-weight: 900;[m
     margin-top: 0;[m
[32m+[m[32m    color: var(--neon-pink);[m[41m[m
[32m+[m[32m    font-family: 'Permanent Marker', cursive;[m[41m[m
[32m+[m[32m    text-shadow: 2px 2px var(--vibrant-yellow);[m[41m[m
 }[m
 [m
 h2, h3 {[m
     font-weight: 700;[m
[32m+[m[32m    color: var(--vibrant-red);[m[41m[m
 }[m
 [m
 p {[m
[31m-    font-size: 18px;[m
[32m+[m[32m    font-size: 1.2rem;[m[41m[m
     font-weight: 400;[m
[32m+[m[32m    color: var(--black);[m[41m[m
 }[m
 [m
[31m-@media (max-width: 768px) {[m
[31m-    .container {[m
[31m-        width: 95%;[m
[31m-        padding: 10px;[m
[31m-    }[m
[32m+[m[32m/* Content Section */[m[41m[m
[32m+[m[32m.content-section {[m[41m[m
[32m+[m[32m    margin-top: 5rem;[m[41m[m
[32m+[m[32m    padding: 1rem 0;[m[41m[m
[32m+[m[32m}[m[41m[m
 [m
[31m-    .h1-style, h1 {[m
[31m-        font-size: 40px;[m
[31m-    }[m
[32m+[m[32m.image-container {[m[41m[m
[32m+[m[32m    position: relative;[m[41m[m
[32m+[m[32m    max-width: 100%;[m[41m[m
[32m+[m[32m    overflow: hidden;[m[41m[m
[32m+[m[32m    border: 5px solid var(--neon-pink);[m[41m[m
[32m+[m[32m    box-shadow: 10px 10px 0 var(--vibrant-purple), 15px 15px 0 var(--neon-green);[m[41m[m
[32m+[m[32m}[m[41m[m
 [m
[31m-    p {[m
[31m-        font-size: 16px;[m
[31m-    }[m
[32m+[m[32m.image-container img {[m[41m[m
[32m+[m[32m    width: 100%;[m[41m[m
[32m+[m[32m    display: block;[m[41m[m
[32m+[m[32m}[m[41m[m
 [m
[31m-    .section-content {[m
[31m-        padding: 50px 10px;[m
[31m-        transform: translateX(0);[m
[31m-        opacity: 1;[m
[31m-    }[m
[32m+[m[32m.text-container {[m[41m[m
[32m+[m[32m    padding: 1rem;[m[41m[m
[32m+[m[32m    background: rgba(255, 255, 255, 0.9);[m[41m[m
[32m+[m[32m    color: var(--black);[m[41m[m
[32m+[m[32m    border-radius: 10px;[m[41m[m
[32m+[m[32m    box-shadow: 5px 5px 0px var(--neon-pink), 10px 10px 0px var(--neon-green), 15px 15px 0px var(--neon-blue);[m[41m[m
[32m+[m[32m}[m[41m[m
 [m
[31m-    .parallax {[m
[31m-        background-attachment: scroll;[m
[31m-    }[m
[32m+[m[32m.text-container h1 {[m[41m[m
[32m+[m[32m    font-size: 2.5rem;[m[41m[m
[32m+[m[32m    color: var(--black);[m[41m[m
[32m+[m[32m    font-family: 'Permanent Marker', cursive;[m[41m[m
 }[m
 [m
[31m-@media (max-width: 480px) {[m
[31m-    .container {[m
[31m-        width: 90%;[m
[31m-        padding: 5px;[m
[31m-    }[m
[32m+[m[32m.text-container p {[m[41m[m
[32m+[m[32m    font-size: 1.2rem;[m[41m[m
[32m+[m[32m    line-height: 1.5;[m[41m[m
[32m+[m[32m    margin-bottom: 1rem;[m[41m[m
[32m+[m[32m    font-family: 'Montserrat', sans-serif;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m/* Social Section */[m[41m[m
[32m+[m[32m.social-icon {[m[41m[m
[32m+[m[32m    font-size: 2rem;[m[41m[m
[32m+[m[32m    color: var(--black);[m[41m[m
[32m+[m[32m    margin: 0 1rem;[m[41m[m
[32m+[m[32m    transition: color 0.3s ease-in-out;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m.social-icon:hover {[m[41m[m
[32m+[m[32m    color: var(--neon-pink);[m[41m[m
[32m+[m[32m}[m[41m[m
 [m
[32m+[m[32m/* Tumblr Post */[m[41m[m
[32m+[m[32m.tumblr-post {[m[41m[m
[32m+[m[32m    margin: 2rem 0;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m/* Carousel Styles */[m[41m[m
[32m+[m[32m.carousel {[m[41m[m
[32m+[m[32m    position: relative;[m[41m[m
[32m+[m[32m    width: 100%;[m[41m[m
[32m+[m[32m    max-width: 700px;[m[41m[m
[32m+[m[32m    margin: 0 auto;[m[41m[m
[32m+[m[32m    perspective: 1000px;[m[41m[m
[32m+[m[32m    display: flex;[m[41m[m
[32m+[m[32m    overflow: hidden;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m.carousel-inner {[m[41m[m
[32m+[m[32m    display: flex;[m[41m[m
[32m+[m[32m    transition: transform 0.5s ease;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m.card-container {[m[41m[m
[32m+[m[32m    flex: 0 0 100%;[m[41m[m
[32m+[m[32m    opacity: 0.5;[m[41m[m
[32m+[m[32m    transition: opacity 0.5s;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m.card-container.active {[m[41m[m
[32m+[m[32m    opacity: 1;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m.card {[m[41m[m
[32m+[m[32m    background-color: #fff;[m[41m[m
[32m+[m[32m    border-radius: 15px;[m[41m[m
[32m+[m[32m    padding: 1rem;[m[41m[m
[32m+[m[32m    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);[m[41m[m
[32m+[m[32m    text-align: center;[m[41m[m
[32m+[m[32m    color: #333;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m.nav {[m[41m[m
[32m+[m[32m    position: absolute;[m[41m[m
[32m+[m[32m    top: 50%;[m[41m[m
[32m+[m[32m    transform: translateY(-50%);[m[41m[m
[32m+[m[32m    background: none;[m[41m[m
[32m+[m[32m    border: none;[m[41m[m
[32m+[m[32m    font-size: 2rem;[m[41m[m
[32m+[m[32m    color: #333;[m[41m[m
[32m+[m[32m    cursor: pointer;[m[41m[m
[32m+[m[32m    z-index: 10;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m.nav.left {[m[41m[m
[32m+[m[32m    left: 10px;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m.nav.right {[m[41m[m
[32m+[m[32m    right: 10px;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m@media (max-width: 768px) {[m[41m[m
[32m+[m[32m    #menu-toggle {[m[41m[m
[32m+[m[32m        display: flex;[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[32m    ul {[m[41m[m
[32m+[m[32m        display: none;[m[41m[m
[32m+[m[32m        flex-direction: column;[m[41m[m
[32m+[m[32m        background: var(--neon-blue);[m[41m[m
[32m+[m[32m        position: absolute;[m[41m[m
[32m+[m[32m        top: 70px;[m[41m[m
[32m+[m[32m        right: 20px;[m[41m[m
[32m+[m[32m        width: 200px;[m[41m[m
[32m+[m[32m        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[32m    ul.showMenu {[m[41m[m
[32m+[m[32m        display: flex;[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[32m    li {[m[41m[m
[32m+[m[32m        margin-left: 0;[m[41m[m
[32m+[m[32m    }[m[41m[m
     .h1-style, h1 {[m
[31m-        font-size: 30px;[m
[32m+[m[32m        font-size: 2rem;[m[41m[m
     }[m
[31m-[m
     p {[m
[31m-        font-size: 14px;[m
[32m+[m[32m        font-size: 1rem;[m[41m[m
     }[m
[32m+[m[32m}[m[41m[m
 [m
[31m-    .section-content {[m
[31m-        padding: 25px 5px;[m
[31m-        transform: translateX(0);[m
[31m-        opacity: 1;[m
[32m+[m[32m@media (max-width: 480px) {[m[41m[m
[32m+[m[32m    .h1-style, h1 {[m[41m[m
[32m+[m[32m        font-size: 1.5rem;[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[32m    p {[m[41m[m
[32m+[m[32m        font-size: 0.875rem;[m[41m[m
     }[m
 }[m
[1mdiff --git a/assets/css/nav_custom.css b/assets/css/nav_custom.css[m
[1mdeleted file mode 100644[m
[1mindex 0c30933..0000000[m
[1m--- a/assets/css/nav_custom.css[m
[1m+++ /dev/null[m
[36m@@ -1,115 +0,0 @@[m
[31m-:root {[m
[31m-    --background-start: #381a4a;[m
[31m-    --background-end: #483469;[m
[31m-    --neon-pink: #e63946;[m
[31m-    --hover-pink: #ff6b81;[m
[31m-    --white: #f1faee;[m
[31m-}[m
[31m-[m
[31m-.nav-container {[m
[31m-    display: flex;[m
[31m-    justify-content: space-between;[m
[31m-    align-items: center;[m
[31m-    padding: 1rem 2rem;[m
[31m-    background: linear-gradient(to right, var(--background-start), var(--background-end));[m
[31m-    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);[m
[31m-    position: fixed;[m
[31m-    top: 0;[m
[31m-    width: 100%;[m
[31m-    z-index: 1000;[m
[31m-    backdrop-filter: blur(10px);[m
[31m-    transition: background-color 0.3s;[m
[31m-}[m
[31m-[m
[31m-#main-nav ul {[m
[31m-    display: flex;[m
[31m-    flex-direction: row;[m
[31m-    list-style: none;[m
[31m-    padding: 0;[m
[31m-    margin: 0;[m
[31m-}[m
[31m-[m
[31m-#main-nav ul li {[m
[31m-    margin: 0 15px;[m
[31m-    position: relative;[m
[31m-}[m
[31m-[m
[31m-#main-nav ul li a {[m
[31m-    font-size: 16px;[m
[31m-    color: var(--neon-pink);[m
[31m-    text-decoration: none;[m
[31m-    padding: 0.5rem 1rem;[m
[31m-    border-radius: 8px;[m
[31m-    transition: background-color 0.3s, color 0.3s, transform 0.3s;[m
[31m-}[m
[31m-[m
[31m-#main-nav ul li a:hover,[m
[31m-#main-nav ul li a:focus {[m
[31m-    background-color: var(--hover-pink);[m
[31m-    color: var(--white);[m
[31m-    outline: none;[m
[31m-    transform: scale(1.05);[m
[31m-}[m
[31m-[m
[31m-.hamburger {[m
[31m-    display: none;[m
[31m-    flex-direction: column;[m
[31m-    cursor: pointer;[m
[31m-}[m
[31m-[m
[31m-.hamburger span {[m
[31m-    height: 3px;[m
[31m-    width: 25px;[m
[31m-    background: var(--neon-pink);[m
[31m-    margin: 4px;[m
[31m-    border-radius: 5px;[m
[31m-}[m
[31m-[m
[31m-@media (max-width: 768px) {[m
[31m-    .nav-container {[m
[31m-        padding: 1rem;[m
[31m-    }[m
[31m-[m
[31m-    #main-nav ul {[m
[31m-        flex-direction: column;[m
[31m-        align-items: center;[m
[31m-        display: none;[m
[31m-        width: 100%;[m
[31m-        background-color: var(--background-end);[m
[31m-        position: absolute;[m
[31m-        top: 60px;[m
[31m-        left: 0;[m
[31m-        z-index: 999;[m
[31m-    }[m
[31m-[m
[31m-    #main-nav ul li {[m
[31m-        margin: 10px 0;[m
[31m-        text-align: center;[m
[31m-        position: static;[m
[31m-    }[m
[31m-[m
[31m-    #main-nav ul li a {[m
[31m-        display: block;[m
[31m-        width: 100%;[m
[31m-        padding: 10px 0;[m
[31m-    }[m
[31m-[m
[31m-    .hamburger {[m
[31m-        display: flex;[m
[31m-    }[m
[31m-[m
[31m-    .nav-container.active #main-nav ul {[m
[31m-        display: flex;[m
[31m-    }[m
[31m-}[m
[31m-[m
[31m-@media (max-width: 480px) {[m
[31m-    .nav-container {[m
[31m-        padding: 0.5rem;[m
[31m-    }[m
[31m-[m
[31m-    #main-nav ul li a {[m
[31m-        font-size: 14px;[m
[31m-        padding: 8px 0;[m
[31m-    }[m
[31m-}[m
[1mdiff --git a/assets/css/sfb_custom.css b/assets/css/sfb_custom.css[m
[1mdeleted file mode 100644[m
[1mindex 28c605e..0000000[m
[1m--- a/assets/css/sfb_custom.css[m
[1m+++ /dev/null[m
[36m@@ -1,70 +0,0 @@[m
[31m-#blog .container {[m
[31m-    padding-left: 2rem;[m
[31m-    margin-top: 8rem;[m
[31m-    padding-right: 1rem;[m
[31m-    border-radius: 5rem 1rem 0 0;[m
[31m-    background-color: var(--white);[m
[31m-    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2); [m
[31m-    transform: translateX(100%);[m
[31m-    transition: transform 0.5s ease-out, opacity 0.5s ease-out;[m
[31m-    opacity: 0;[m
[31m-}[m
[31m-[m
[31m-#blog h1 {[m
[31m-    font-size: 60px;[m
[31m-    margin-top: 0;[m
[31m-    color: var(--vibrant-red);[m
[31m-    text-align: center;[m
[31m-}[m
[31m-[m
[31m-#blog p {[m
[31m-    font-size: 18px;[m
[31m-    text-align: center;[m
[31m-    color: var(--vibrant-red);[m
[31m-    margin-bottom: 20px;[m
[31m-}[m
[31m-[m
[31m-.tumblr-post {[m
[31m-    margin-top: 20px;[m
[31m-    display: flex;[m
[31m-    justify-content: center;[m
[31m-    align-items: center;[m
[31m-    border: 1px solid var(--vibrant-red);[m
[31m-    border-radius: 15px;[m
[31m-    padding: 15px;[m
[31m-    background-color: var(--white);[m
[31m-    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);[m
[31m-}[m
[31m-[m
[31m-@media (max-width: 768px) {[m
[31m-    #blog .container {[m
[31m-        padding-left: 0.5rem;[m
[31m-        padding-right: 0.5rem;[m
[31m-        margin-top: 4rem;[m
[31m-        border-radius: 5rem 1rem 0 0;[m
[31m-    }[m
[31m-[m
[31m-    #blog h1 {[m
[31m-        font-size: 40px;[m
[31m-    }[m
[31m-[m
[31m-    #blog p {[m
[31m-        font-size: 16px;[m
[31m-    }[m
[31m-}[m
[31m-[m
[31m-@media (max-width: 480px) {[m
[31m-    #blog .container {[m
[31m-        padding: 1rem;[m
[31m-        margin-top: 2rem;[m
[31m-        border-radius: 5rem 1rem 0 0;[m
[31m-    }[m
[31m-[m
[31m-    #blog h1 {[m
[31m-        font-size: 30px;[m
[31m-    }[m
[31m-[m
[31m-    #blog p {[m
[31m-        font-size: 14px;[m
[31m-    }[m
[31m-}[m
[1mdiff --git a/assets/css/sfs_custom.css b/assets/css/sfs_custom.css[m
[1mdeleted file mode 100644[m
[1mindex 274cc25..0000000[m
[1m--- a/assets/css/sfs_custom.css[m
[1m+++ /dev/null[m
[36m@@ -1,81 +0,0 @@[m
[31m-/* Styles for the social section */[m
[31m-#social .container {[m
[31m-    padding-left: 1rem;[m
[31m-    padding-right: 2rem;[m
[31m-    margin-top: 8rem;[m
[31m-    border-radius: 1rem 5rem 0 0;[m
[31m-    background-color: var(--white);[m
[31m-    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);[m
[31m-    transform: translateX(-100%);[m
[31m-    transition: transform 0.5s ease-out, opacity 0.5s ease-out;[m
[31m-    opacity: 0;[m
[31m-}[m
[31m-[m
[31m-#social h1, #social p {[m
[31m-    text-align: center;[m
[31m-    color: var(--vibrant-purple);[m
[31m-}[m
[31m-[m
[31m-#social h1 {[m
[31m-    font-size: 60px;[m
[31m-    margin-top: 0;[m
[31m-}[m
[31m-[m
[31m-#social .social-icons {[m
[31m-    display: flex;[m
[31m-    justify-content: center;[m
[31m-    align-items: center;[m
[31m-    margin-top: 20px;[m
[31m-}[m
[31m-[m
[31m-#social .social-icon {[m
[31m-    font-size: 40px;[m
[31m-    color: var(--vibrant-purple);[m
[31m-    margin: 10px;[m
[31m-    transition: color 0.3s, transform 0.3s;[m
[31m-}[m
[31m-[m
[31m-#social .social-icon:hover {[m
[31m-    color: var(--neon-pink);[m
[31m-    transform: scale(1.1);[m
[31m-}[m
[31m-[m
[31m-/* Media queries for responsive design */[m
[31m-@media (max-width: 768px) {[m
[31m-    /* Styles for the social section on screens up to 768px */[m
[31m-    #social .container {[m
[31m-        padding-left: 0.5rem;[m
[31m-        padding-right: 0.5rem;[m
[31m-        margin-top: 4rem;[m
[31m-        border-radius: 0.5rem 2.5rem 0 0;[m
[31m-    }[m
[31m-[m
[31m-    #social h1, #social p {[m
[31m-        font-size: 40px;[m
[31m-    }[m
[31m-[m
[31m-    #social .social-icon {[m
[31m-        font-size: 30px;[m
[31m-    }[m
[31m-}[m
[31m-[m
[31m-@media (max-width: 480px) {[m
[31m-    /* Styles for the social section on screens up to 480px */[m
[31m-    #social .container {[m
[31m-        padding: 1rem;[m
[31m-        margin-top: 2rem;[m
[31m-        border-radius: 0.5rem 2.5rem 0 0;[m
[31m-    }[m
[31m-[m
[31m-    #social h1 {[m
[31m-        font-size: 30px;[m
[31m-    }[m
[31m-[m
[31m-    #social p {[m
[31m-        font-size: 14px;[m
[31m-    }[m
[31m-[m
[31m-    #social .social-icon {[m
[31m-        font-size: 25px;[m
[31m-    }[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/assets/css/wio_custom.css b/assets/css/wio_custom.css[m
[1mdeleted file mode 100644[m
[1mindex 8d433af..0000000[m
[1m--- a/assets/css/wio_custom.css[m
[1m+++ /dev/null[m
[36m@@ -1,76 +0,0 @@[m
[31m-#whois .container {[m
[31m-    margin-top: 5rem;[m
[31m-    padding: 1rem;[m
[31m-    border-radius: 1rem 5rem 1rem 1rem;[m
[31m-    background-color: var(--white);[m
[31m-    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);[m
[31m-    display: flex;[m
[31m-    flex-direction: row; [m
[31m-    justify-content: space-between;[m
[31m-    align-items: center;[m
[31m-    z-index: 10;[m
[31m-    position: relative;[m
[31m-}[m
[31m-[m
[31m-#whois h1 {[m
[31m-    font-size: 4rem;[m
[31m-    margin-top: 0;[m
[31m-    color: var(--neon-pink);[m
[31m-}[m
[31m-[m
[31m-#whois p {[m
[31m-    padding: 20px;[m
[31m-    color: var(--neon-pink);[m
[31m-    margin-left: 20px;[m
[31m-    text-align: left;[m
[31m-}[m
[31m-[m
[31m-#whois .responsive-image {[m
[31m-    width: auto;[m
[31m-    max-width: 50%;[m
[31m-    height: auto;[m
[31m-    margin-right: 20px;[m
[31m-}[m
[31m-[m
[31m-@media (max-width: 768px) {[m
[31m-    #whois .container {[m
[31m-        flex-direction: column; [m
[31m-        align-items: center;[m
[31m-        margin-top: 4rem;[m
[31m-        border-radius: 0.5rem;[m
[31m-    }[m
[31m-[m
[31m-    #whois h1 {[m
[31m-        font-size: 2.5rem;[m
[31m-        text-align: center;[m
[31m-    }[m
[31m-[m
[31m-    #whois p {[m
[31m-        font-size: 16px;[m
[31m-        padding: 10px;[m
[31m-        margin-left: 0;[m
[31m-        text-align: center;[m
[31m-    }[m
[31m-[m
[31m-    #whois .responsive-image {[m
[31m-        max-width: 80%; [m
[31m-        margin: 0 auto 10px;[m
[31m-    }[m
[31m-}[m
[31m-[m
[31m-@media (max-width: 480px) {[m
[31m-    #whois h1 {[m
[31m-        font-size: 2rem;[m
[31m-        text-align: center;[m
[31m-    }[m
[31m-[m
[31m-    #whois p {[m
[31m-        font-size: 14px;[m
[31m-        padding: 0;[m
[31m-        text-align: center;[m
[31m-    }[m
[31m-[m
[31m-    #whois .responsive-image {[m
[31m-        max-width: 90%; [m
[31m-    }[m
[31m-}[m
[1mdiff --git a/assets/js/nav_custom.js b/assets/js/nav_custom.js[m
[1mdeleted file mode 100644[m
[1mindex fddbce3..0000000[m
[1m--- a/assets/js/nav_custom.js[m
[1m+++ /dev/null[m
[36m@@ -1,16 +0,0 @@[m
[31m-document.addEventListener("DOMContentLoaded", function () {[m
[31m-    const hamburger = document.getElementById("hamburger");[m
[31m-    const navContainer = document.querySelector(".nav-container");[m
[31m-    const mainNav = document.getElementById("main-nav");[m
[31m-    const navLinks = document.querySelectorAll("#main-nav ul li a");[m
[31m-[m
[31m-    hamburger.addEventListener("click", function () {[m
[31m-        navContainer.classList.toggle("active");[m
[31m-    });[m
[31m-[m
[31m-    navLinks.forEach((link) => {[m
[31m-        link.addEventListener("click", function () {[m
[31m-            navContainer.classList.remove("active");[m
[31m-        });[m
[31m-    });[m
[31m-});[m
[1mdiff --git a/assets/js/scroll_custom.js b/assets/js/scroll_custom.js[m
[1mdeleted file mode 100644[m
[1mindex 77ca033..0000000[m
[1m--- a/assets/js/scroll_custom.js[m
[1m+++ /dev/null[m
[36m@@ -1,51 +0,0 @@[m
[31m-document.addEventListener('DOMContentLoaded', () => {[m
[31m-    document.querySelectorAll('a[href^="#"]').forEach(anchor => {[m
[31m-        anchor.addEventListener('click', function (e) {[m
[31m-            e.preventDefault();[m
[31m-            document.querySelector(this.getAttribute('href')).scrollIntoView({[m
[31m-                behavior: 'smooth'[m
[31m-            });[m
[31m-        });[m
[31m-    });[m
[31m-[m
[31m-    const sections = document.querySelectorAll('.section-content');[m
[31m-[m
[31m-    const updateTransforms = () => {[m
[31m-        const screenWidth = window.innerWidth;[m
[31m-        sections.forEach(section => {[m
[31m-            if (screenWidth <= 768) {[m
[31m-                section.style.transform = 'translateX(0)';[m
[31m-                section.style.opacity = '1';[m
[31m-            } else {[m
[31m-                const startDirection = section.dataset.startDirection;[m
[31m-                section.style.transform = startDirection;[m
[31m-                section.style.opacity = '0';[m
[31m-            }[m
[31m-        });[m
[31m-    };[m
[31m-[m
[31m-    const handleScrollAnimation = entries => {[m
[31m-        entries.forEach(entry => {[m
[31m-            const target = entry.target;[m
[31m-            if (entry.isIntersecting) {[m
[31m-                target.style.transform = 'translateX(0)';[m
[31m-                target.style.opacity = '1';[m
[31m-            } else {[m
[31m-                const outDirection = target.dataset.outDirection || 'translateX(-100%)';[m
[31m-                target.style.transform = outDirection;[m
[31m-                target.style.opacity = '0';[m
[31m-            }[m
[31m-        });[m
[31m-    };[m
[31m-[m
[31m-    const observer = new IntersectionObserver(handleScrollAnimation, { threshold: 0.1 });[m
[31m-[m
[31m-    sections.forEach(section => {[m
[31m-        observer.observe(section);[m
[31m-        section.dataset.startDirection = getComputedStyle(section).transform;[m
[31m-        section.dataset.outDirection = 'translateX(-100%)';[m
[31m-    });[m
[31m-[m
[31m-    updateTransforms();[m
[31m-    window.addEventListener('resize', updateTransforms);[m
[31m-});[m
[1mdiff --git a/index.html b/index.html[m
[1mindex 729d55e..96a6868 100644[m
[1m--- a/index.html[m
[1m+++ b/index.html[m
[36m@@ -4,83 +4,122 @@[m
 <head>[m
     <meta charset="UTF-8">[m
     <meta name="viewport" content="width=device-width, initial-scale=1.0">[m
[32m+[m[32m    <meta name="description" content="The official website of Olivia Magyar, a talented performer known for her singing and acting.">[m[41m[m
[32m+[m[32m    <meta name="keywords" content="Olivia Magyar, Singer, Actress, Performer">[m[41m[m
[32m+[m[32m    <meta name="author" content="Olivia Magyar">[m[41m[m
     <title>Olivia Magyar</title>[m
[32m+[m[32m    <!-- Bootstrap CSS -->[m[41m[m
[32m+[m[32m    <link rel="stylesheet" href="assets/css/bs/css/bootstrap.min.css">[m[41m[m
[32m+[m[32m    <!-- Custom CSS -->[m[41m[m
     <link rel="stylesheet" href="assets/css/main_custom.css">[m
[31m-    <link rel="stylesheet" href="assets/css/nav_custom.css">[m
[31m-    <link rel="stylesheet" href="assets/css/wio_custom.css">[m
[31m-    <link rel="stylesheet" href="assets/css/sfb_custom.css">[m
[31m-    <link rel="stylesheet" href="assets/css/sfs_custom.css">[m
     <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;900&display=swap" rel="stylesheet">[m
[31m-    <link href='https://cdn.jsdelivr.net/npm/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>[m
[32m+[m[32m    <link href="https://cdn.jsdelivr.net/npm/boxicons@2.0.9/css/boxicons.min.css" rel="stylesheet">[m[41m[m
[32m+[m[32m    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">[m[41m[m
     <script async src="https://assets.tumblr.com/post.js"></script>[m
 </head>[m
 [m
[31m-<body class="fluid-background">[m
[31m-    <div class="nav-container">[m
[31m-        <div class="hamburger" id="hamburger">[m
[31m-            <span></span>[m
[31m-            <span></span>[m
[31m-            <span></span>[m
[31m-        </div>[m
[31m-        <nav id="main-nav">[m
[31m-            <ul>[m
[31m-                <li><a href="#whois">Who is Olivia</a></li>[m
[31m-                <li><a href="#blog">Blog Highlights</a></li>[m
[31m-                <li><a href="#social">Connect on Social</a></li>[m
[31m-            </ul>[m
[32m+[m[32m<body>[m[41m[m
[32m+[m[32m    <header class="nav-container">[m[41m[m
[32m+[m[32m        <nav class="navbar">[m[41m[m
[32m+[m[32m            <div id="brand">[m[41m[m
[32m+[m[32m                <div id="word-mark"><span class="olivia-magyar">Olivia Magyar</span></div>[m[41m[m
[32m+[m[32m            </div>[m[41m[m
[32m+[m[32m            <div id="menu">[m[41m[m
[32m+[m[32m                <div id="menu-toggle">[m[41m[m
[32m+[m[32m                    <div id="menu-icon">[m[41m[m
[32m+[m[32m                        <div class="bar"></div>[m[41m[m
[32m+[m[32m                        <div class="bar"></div>[m[41m[m
[32m+[m[32m                        <div class="bar"></div>[m[41m[m
[32m+[m[32m                    </div>[m[41m[m
[32m+[m[32m                </div>[m[41m[m
[32m+[m[32m                <ul>[m[41m[m
[32m+[m[32m                    <li><a href="#whois">Who is Olivia</a></li>[m[41m[m
[32m+[m[32m                    <li><a href="#blog">Blog Highlights</a></li>[m[41m[m
[32m+[m[32m                    <li><a href="#social">Connect on Social</a></li>[m[41m[m
[32m+[m[32m                </ul>[m[41m[m
[32m+[m[32m            </div>[m[41m[m
         </nav>[m
[31m-    </div>[m
[32m+[m[32m    </header>[m[41m[m
 [m
[31m-    <div class="parallax" id="whois">[m
[31m-        <div class="container section-content" data-start-direction="translateX(-100%)" data-out-direction="translateX(-100%)">[m
[31m-            <img src="assets/images/om_1.PNG" alt="Olivia Magyar" class="responsive-image">[m
[31m-            <div>[m
[31m-                <h1>Who is Olivia?</h1>[m
[31m-                <p>Olivia Magyar's journey in the performing arts began early and has showcased her diverse talents in both acting and singing. Her musical talent was first noticed when, at just 3 years old, she performed at the Tokaj Harvest Festival, singing a Hungarian folk song to great acclaim. This early exposure set the stage for her future endeavors in the arts.</p>[m
[31m-                <p>By 2016, Olivia had already made a name for herself in the competitive world of television talent shows. She appeared on RTL's 'Little Giants', a show where children showcase various talents. Her exceptional vocal performances led her to win her category, confirming her potential as a singer.</p>[m
[31m-                <p>In 2017, Olivia transitioned into acting, appearing in an image film for Richter Gedeon Pharmaceuticals. Her acting skills caught the attention of wider audiences and industry professionals alike. That same year, she was also actively involved in the 'Kővirágok' singing school, performing songs from popular Disney movies such as "Pocahontas" and "The Princess and the Frog" at the school’s flagship anniversary events.</p>[m
[31m-                <p>2019 was a particularly eventful year for Olivia. She was cast in the lead role of Hanna in the daily fiction telenovela 'Señores Papis/Dear Daddies' on Hungary's leading commercial channel, TV2. The show, a Hungarian adaptation of the Argentinean original, was a significant commitment that spanned three seasons and 199 episodes through 2021. Her portrayal received positive reviews from both critics and audiences. Additionally, in 2019, Olivia competed in the national singing competition 'Soundwave', where she was the youngest finalist, showcasing her continuing development as a vocalist.</p>[m
[31m-                <p>The year 2021 saw Olivia expanding her repertoire further. She starred as Elza in the film 'Real Siblings', directed by Kristóf Kiss-Szeif, and served as a child judge on TV2’s gastro-reality show 'Game of Chefs GR - child jury'. Her musical career continued to flourish as well; she performed the song 'Memory' from the musical 'Cats' at its 1500th anniversary performance at the Madách Theatre in Budapest.</p>[m
[31m-                <p>In addition to her acting and singing, Olivia is a member of the SoulAir chamber choir. Her involvement has led to numerous opportunities, including performing at various significant events, such as the UEFA 2020 Budapest opening ceremony and a special video clip for Elton John's 75th birthday.</p>[m
[31m-                <p>Olivia Magyar continues to impress with her versatile talents, seamlessly moving between the worlds of acting and singing, thereby creating a vibrant and promising career trajectory in the performing arts.</p>[m
[32m+[m[32m    <main>[m[41m[m
[32m+[m[32m        <section id="whois" class="content-section">[m[41m[m
[32m+[m[32m            <div class="container py-5">[m[41m[m
[32m+[m[32m                <div class="row align-items-center">[m[41m[m
[32m+[m[32m                    <div class="col-md-6 text-center text-md-start">[m[41m[m
[32m+[m[32m                        <div class="image-container magazine-cutout">[m[41m[m
[32m+[m[32m                            <img src="assets/images/om_1.PNG" alt="Olivia Magyar" class="img-fluid">[m[41m[m
[32m+[m[32m                        </div>[m[41m[m
[32m+[m[32m                    </div>[m[41m[m
[32m+[m[32m                    <div class="col-md-6 mt-4 mt-md-0">[m[41m[m
[32m+[m[32m                        <div class="text-container">[m[41m[m
[32m+[m[32m                            <h1>Who is Olivia?</h1>[m[41m[m
[32m+[m[32m                            <p>Olivia Magyar's journey in the performing arts began early and has showcased her diverse talents in both acting and singing. Her musical talent was first noticed when, at just 3 years old, she performed at the Tokaj Harvest Festival, singing a Hungarian folk song to great acclaim. This early exposure set the stage for her future endeavors in the arts.</p>[m[41m[m
[32m+[m[32m                            <p>By 2016, Olivia had already made a name for herself in the competitive world of television talent shows. She appeared on RTL's 'Little Giants', a show where children showcase various talents. Her exceptional vocal performances led her to win her category, confirming her potential as a singer.</p>[m[41m[m
[32m+[m[32m                            <p>In 2017, Olivia transitioned into acting, appearing in an image film for Richter Gedeon Pharmaceuticals. Her acting skills caught the attention of wider audiences and industry professionals alike. That same year, she was also actively involved in the 'Kővirágok' singing school, performing songs from popular Disney movies such as "Pocahontas" and "The Princess and the Frog" at the school’s flagship anniversary events.</p>[m[41m[m
[32m+[m[32m                            <p>2019 was a particularly eventful year for Olivia. She was cast in the lead role of Hanna in the daily fiction telenovela 'Señores Papis/Dear Daddies' on Hungary's leading commercial channel, TV2. The show, a Hungarian adaptation of the Argentinean original, was a significant commitment that spanned three seasons and 199 episodes through 2021. Her portrayal received positive reviews from both critics and audiences. Additionally, in 2019, Olivia competed in the national singing competition 'Soundwave', where she was the youngest finalist, showcasing her continuing development as a vocalist.</p>[m[41m[m
[32m+[m[32m                            <p>The year 2021 saw Olivia expanding her repertoire further. She starred as Elza in the film 'Real Siblings', directed by Kristóf Kiss-Szeif, and served as a child judge on TV2’s gastro-reality show 'Game of Chefs GR - child jury'. Her musical career continued to flourish as well; she performed the song 'Memory' from the musical 'Cats' at its 1500th anniversary performance at the Madách Theatre in Budapest.</p>[m[41m[m
[32m+[m[32m                            <p>In addition to her acting and singing, Olivia is a member of the SoulAir chamber choir. Her involvement has led to numerous opportunities, including performing at various significant events, such as the UEFA 2020 Budapest opening ceremony and a special video clip for Elton John's 75th birthday.</p>[m[41m[m
[32m+[m[32m                            <p>Olivia Magyar continues to impress with her versatile talents, seamlessly moving between the worlds of acting and singing, thereby creating a vibrant and promising career trajectory in the performing arts.</p>[m[41m[m
[32m+[m[32m                        </div>[m[41m[m
[32m+[m[32m                    </div>[m[41m[m
[32m+[m[32m                </div>[m[41m[m
             </div>[m
[31m-        </div>[m
[31m-    </div>[m
[32m+[m[32m        </section>[m[41m[m
 [m
[31m-    <div class="parallax" id="blog">[m
[31m-        <div class="container section-content" data-start-direction="translateX(100%)" data-out-direction="translateX(100%)">[m
[31m-            <h1 class="h1-style">Blog Highlights</h1>[m
[31m-            <p>Welcome to the Blog Highlights! Here you will find the latest updates and stories from Olivia's journey. Whether it's her latest performances, behind-the-scenes insights, or personal reflections, this is the place to stay connected.</p>[m
[31m-            <p>Explore the posts below and dive into the world of Olivia Magyar.</p>[m
[31m-            <div class="tumblr-post" data-href="https://embed.tumblr.com/embed/post/XXXXXX/YYYYY"></div>[m
[31m-            <p>Stay tuned for more exciting updates and don't forget to follow Olivia on her social media channels!</p>[m
[31m-        </div>[m
[31m-    </div>[m
[31m-[m
[31m-    <div class="parallax" id="social">[m
[31m-        <div class="container section-content" data-start-direction="translateX(-100%)" data-out-direction="translateX(-100%)">[m
[31m-            <h1 class="h1-style">Connect on Social</h1>[m
[31m-            <p>Follow Olivia on social media platforms.</p>[m
[31m-            <div class="social-icons">[m
[31m-                <a href="https://www.facebook.com/olivia.magyar" target="_blank" class="social-icon">[m
[31m-                    <i class='bx bxl-facebook'></i>[m
[31m-                </a>[m
[31m-                <a href="https://twitter.com/olivia_magyar" target="_blank" class="social-icon">[m
[31m-                    <i class='bx bxl-twitter'></i>[m
[31m-                </a>[m
[31m-                <a href="https://www.instagram.com/olivia.magyar" target="_blank" class="social-icon">[m
[31m-                    <i class='bx bxl-instagram'></i>[m
[31m-                </a>[m
[31m-                <a href="https://www.linkedin.com/in/olivia-magyar" target="_blank" class="social-icon">[m
[31m-                    <i class='bx bxl-linkedin'></i>[m
[31m-                </a>[m
[32m+[m[32m        <section id="blog" class="content-section">[m[41m[m
[32m+[m[32m            <div class="container py-5">[m[41m[m
[32m+[m[32m                <h1 class="h1-style">Blog Highlights</h1>[m[41m[m
[32m+[m[32m                <div class="carousel">[m[41m[m
[32m+[m[32m                    <div class="carousel-inner">[m[41m[m
[32m+[m[32m                        <div class="card-container active">[m[41m[m
[32m+[m[32m                            <div class="card">[m[41m[m
[32m+[m[32m                                <h2>Card 1</h2>[m[41m[m
[32m+[m[32m                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>[m[41m[m
[32m+[m[32m                            </div>[m[41m[m
[32m+[m[32m                        </div>[m[41m[m
[32m+[m[32m                        <div class="card-container">[m[41m[m
[32m+[m[32m                            <div class="card">[m[41m[m
[32m+[m[32m                                <h2>Card 2</h2>[m[41m[m
[32m+[m[32m                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>[m[41m[m
[32m+[m[32m                            </div>[m[41m[m
[32m+[m[32m                        </div>[m[41m[m
[32m+[m[32m                        <div class="card-container">[m[41m[m
[32m+[m[32m                            <div class="card">[m[41m[m
[32m+[m[32m                                <h2>Card 3</h2>[m[41m[m
[32m+[m[32m                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>[m[41m[m
[32m+[m[32m                            </div>[m[41m[m
[32m+[m[32m                        </div>[m[41m[m
[32m+[m[32m                    </div>[m[41m[m
[32m+[m[32m                    <button class="nav left"><i class='bx bx-chevron-left'></i></button>[m[41m[m
[32m+[m[32m                    <button class="nav right"><i class='bx bx-chevron-right'></i></button>[m[41m[m
[32m+[m[32m                </div>[m[41m[m
             </div>[m
[31m-        </div>[m
[31m-    </div>[m
[32m+[m[32m        </section>[m[41m[m
 [m
[31m-    <script src="assets/js/scroll_custom.js"></script>[m
[31m-    <script src="assets/js/nav_custom.js"></script>[m
[32m+[m[32m        <section id="social" class="content-section">[m[41m[m
[32m+[m[32m            <div class="container py-5">[m[41m[m
[32m+[m[32m                <h1 class="h1-style">Connect on Social</h1>[m[41m[m
[32m+[m[32m                <p>Follow Olivia on social media platforms.</p>[m[41m[m
[32m+[m[32m                <div class="row text-center">[m[41m[m
[32m+[m[32m                    <div class="col">[m[41m[m
[32m+[m[32m                        <a href="https://www.facebook.com/olivia.magyar" target="_blank" class="social-icon">[m[41m[m
[32m+[m[32m                            <i class='bx bxl-facebook'></i>[m[41m[m
[32m+[m[32m                        </a>[m[41m[m
[32m+[m[32m                        <a href="https://x.com/olivia_magyar" target="_blank" class="social-icon">[m[41m[m
[32m+[m[32m                            <i class='bx bxl-twitter'></i>[m[41m[m
[32m+[m[32m                        </a>[m[41m[m
[32m+[m[32m                        <a href="https://www.instagram.com/olivia.magyar" target="_blank" class="social-icon">[m[41m[m
[32m+[m[32m                            <i class='bx bxl-instagram'></i>[m[41m[m
[32m+[m[32m                        </a>[m[41m[m
[32m+[m[32m                    </div>[m[41m[m
[32m+[m[32m                </div>[m[41m[m
[32m+[m[32m            </div>[m[41m[m
[32m+[m[32m        </section>[m[41m[m
[32m+[m[32m    </main>[m[41m[m
 [m
[32m+[m[32m    <!-- Bootstrap JS and dependencies -->[m[41m[m
[32m+[m[32m    <script src="assets/js/bs/js/bootstrap.bundle.min.js"></script>[m[41m[m
[32m+[m[32m    <script src="assets/js/main_custom.js"></script>[m[41m[m
 </body>[m
 [m
[31m-</html>[m
\ No newline at end of file[m
[32m+[m[32m</html>[m[41m[m
