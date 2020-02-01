const displayGemOnClick = () => {
  const gem1 = document.getElementById('gem-1');
  const display1 = document.getElementById('gem-4');
  const gem2 = document.getElementById('gem-2');
  const display2 = document.getElementById('gem-5');
  const gem3 = document.getElementById('gem-3');
  const display3 = document.getElementById('gem-6');

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

export { displayGemOnClick };
