const displayGemOnClick = () => {
  const astromonIds = document.querySelectorAll('.astromon-id');
  astromonIds.forEach(function(element) {
    let astromonId = element.innerText;
    let display1 = document.getElementById(`${astromonId}-4g`);
    let display2 = document.getElementById(`${astromonId}-5g`);
    let display3 = document.getElementById(`${astromonId}-6g`);
    let display4 = document.getElementById(`${astromonId}-7g`);
    let display5 = document.getElementById(`${astromonId}-4t`);
    let display6 = document.getElementById(`${astromonId}-5t`);
    let display7 = document.getElementById(`${astromonId}-6t`);
    let display8 = document.getElementById(`${astromonId}-7t`);

    document.getElementById(`${astromonId}-1g`).addEventListener('click', () => {
      display1.classList.add('invisible');
      display2.classList.remove('invisible');
      display3.classList.add('invisible');
      display4.classList.add('invisible');
    });

    document.getElementById(`${astromonId}-2g`).addEventListener('click', () => {
      display1.classList.add('invisible');
      display2.classList.add('invisible');
      display3.classList.remove('invisible');
      display4.classList.add('invisible');
    });

    document.getElementById(`${astromonId}-3g`).addEventListener('click', () => {
      display1.classList.add('invisible');
      display2.classList.add('invisible');
      display3.classList.add('invisible');
      display4.classList.remove('invisible');
    });

    document.getElementById(`${astromonId}-1t`).addEventListener('click', () => {
      display5.classList.add('invisible');
      display6.classList.remove('invisible');
      display7.classList.add('invisible');
      display8.classList.add('invisible');
    });

    document.getElementById(`${astromonId}-2t`).addEventListener('click', () => {
      display5.classList.add('invisible');
      display6.classList.add('invisible');
      display7.classList.remove('invisible');
      display8.classList.add('invisible');
    });

    document.getElementById(`${astromonId}-3t`).addEventListener('click', () => {
      display5.classList.add('invisible');
      display6.classList.add('invisible');
      display7.classList.add('invisible');
      display8.classList.remove('invisible');
    });
  });
}

export { displayGemOnClick };
