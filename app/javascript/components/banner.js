import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Dear, let's enjoy our love", "Let's get away this week-end"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
