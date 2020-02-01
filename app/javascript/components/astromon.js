const displayGemOnClick = () => {
  let counter = 1;
  for (let step = 0; step < 120; step++) {
    const gem1 = document.getElementById(`gem-${counter}`);
    const display1 = document.getElementById(`gem-${counter + 3}`);
    counter++;
    const gem2 = document.getElementById(`gem-${counter}`);
    const display2 = document.getElementById(`gem-${counter + 3}`);
    counter++;
    const gem3 = document.getElementById(`gem-${counter}`);
    const display3 = document.getElementById(`gem-${counter + 3}`);
    counter = counter + 4;

    gem1.addEventListener('click', () => {
      display1.classList.remove('invisible');
      display2.classList.add('invisible');
      display3.classList.add('invisible');
    });

    gem2.addEventListener('click', () => {
      display1.classList.add('invisible');
      display2.classList.remove('invisible');
      display3.classList.add('invisible');
    });

    gem3.addEventListener('click', () => {
      display1.classList.add('invisible');
      display2.classList.add('invisible');
      display3.classList.remove('invisible');
    });
  }
}

export { displayGemOnClick };
