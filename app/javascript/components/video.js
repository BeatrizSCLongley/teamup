// Not working at the moment
const startAnimationInView = () => {
  const video = document.querySelector('video');
  if (video) {
    window.addEventListener('scroll', () => {
      this.[0].play();
    });
  }
}

export { startAnimationInView };
