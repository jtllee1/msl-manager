const displayGemOnClick = () => {
  const astromonIds = document.querySelectorAll('.astromon-id');
  astromonIds.forEach(function(element) {
    let astromonId = element.innerText;
    let display1 = document.getElementById(`${astromonId}-4`);
    let display2 = document.getElementById(`${astromonId}-5`);
    let display3 = document.getElementById(`${astromonId}-6`);

    document.getElementById(`${astromonId}-1`).addEventListener('click', () => {
      display1.classList.remove('invisible');
      display2.classList.add('invisible');
      display3.classList.add('invisible');
    });

    document.getElementById(`${astromonId}-2`).addEventListener('click', () => {
      display1.classList.add('invisible');
      display2.classList.remove('invisible');
      display3.classList.add('invisible');
    });

    document.getElementById(`${astromonId}-3`).addEventListener('click', () => {
      display1.classList.add('invisible');
      display2.classList.add('invisible');
      display3.classList.remove('invisible');
    });
  });
}

export { displayGemOnClick };
