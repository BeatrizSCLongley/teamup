// const navbarScroll = document.addEventListener('scroll', function() {
//   const navbar = document.querySelector('.navbar');
//   navbar.classList.remove('hidden');
// });

// export { navbarScroll };

const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.remove('hidden');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
