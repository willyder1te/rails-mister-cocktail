import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Cocktalicious is amazing stuff", "Try our awesome drinks"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
