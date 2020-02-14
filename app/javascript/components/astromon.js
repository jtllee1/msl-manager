const displayGemOnClick = () => {
  const astromonIds = document.querySelectorAll('.astromon-id');
  astromonIds.forEach(function(element) {
    let astromonId = element.innerText;
    let display1 = document.getElementById(`${astromonId}-7`);
    let display2 = document.getElementById(`${astromonId}-8`);
    let display3 = document.getElementById(`${astromonId}-9`);
    let display4 = document.getElementById(`${astromonId}-10`);
    let display5 = document.getElementById(`${astromonId}-11`);
    let display6 = document.getElementById(`${astromonId}-12`);
    let display7 = document.getElementById(`${astromonId}-13`);
    let display8 = document.getElementById(`${astromonId}-14`);

    document.getElementById(`${astromonId}-1`).addEventListener('click', () => {
      display1.classList.add('invisible');
      display2.classList.remove('invisible');
      display3.classList.add('invisible');
      display4.classList.add('invisible');
    });

    document.getElementById(`${astromonId}-2`).addEventListener('click', () => {
      display1.classList.add('invisible');
      display2.classList.add('invisible');
      display3.classList.remove('invisible');
      display4.classList.add('invisible');
    });

    document.getElementById(`${astromonId}-3`).addEventListener('click', () => {
      display1.classList.add('invisible');
      display2.classList.add('invisible');
      display3.classList.add('invisible');
      display4.classList.remove('invisible');
    });

    document.getElementById(`${astromonId}-4`).addEventListener('click', () => {
      display5.classList.add('invisible');
      display6.classList.remove('invisible');
      display7.classList.add('invisible');
      display8.classList.add('invisible');
    });

    document.getElementById(`${astromonId}-5`).addEventListener('click', () => {
      display5.classList.add('invisible');
      display6.classList.add('invisible');
      display7.classList.remove('invisible');
      display8.classList.add('invisible');
    });

    document.getElementById(`${astromonId}-6`).addEventListener('click', () => {
      display5.classList.add('invisible');
      display6.classList.add('invisible');
      display7.classList.add('invisible');
      display8.classList.remove('invisible');
    });
  });
}

export { displayGemOnClick };
