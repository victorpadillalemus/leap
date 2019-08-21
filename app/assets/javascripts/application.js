//= require rails-ujs
//= require_tree .
const navSlide = () => {
  const burger = document.querySelector('.burger');
  const nav = document.querySelector('.nav-links');
  const navLinks = document.querySelectorAll('.nav-links li');
  // Toogle Nav

  burger.addEventListener('click', ()=>{
      nav.classList.toggle('nav-active');
      navLinks.forEach((link, index) => {
        if (link.style.animation){
          link.style.animation = ""
        } else {
          link.style.animation = `navLinkFade 0.3s forwards ${index / 1 + 0.2}s`;
        }
      });
      //burger animation
      burger.classList.toggle(`toggle`);
  });

}
  // animate links
navSlide();
