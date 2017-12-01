import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Let's get away this week-end", "Dear, let's enjoy our love"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
