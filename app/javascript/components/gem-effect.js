const gemEffectOnLoad = () => {
  const astromonIds = document.querySelectorAll('.astromon-id');
  astromonIds.forEach(function(element) {
    let astromonId = element.innerText;
    let gemEffect = document.getElementById(`${astromonId}-gem-description`);
    if (gemEffect) {
      document.getElementById(`${astromonId}-gem-effect`).classList.add('gem-effect');
    };
  });
}

export { gemEffectOnLoad };
