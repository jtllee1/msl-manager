const switchOnClick = () => {
  const astromonIds = document.querySelectorAll('.astromon-id');
  astromonIds.forEach(function(element) {
    let astromonId = element.innerText;
    let statButton = document.getElementById(`stat-button-${astromonId}`);
    let skillButton = document.getElementById(`skill-button-${astromonId}`);
    let statName = document.getElementById(`stat-name-${astromonId}`);
    let statBoost = document.getElementById(`stat-boost-${astromonId}`);
    let statTotal = document.getElementById(`total-stat-${astromonId}`);
    let skill = document.getElementById(`skill-${astromonId}`);

    statButton.addEventListener('click', () => {
      statButton.classList.add('active');
      skillButton.classList.remove('active');
      statName.classList.remove('invisible');
      statBoost.classList.remove('invisible');
      statTotal.classList.remove('invisible');
      skill.classList.add('invisible');
    });

    skillButton.addEventListener('click', () => {
      statButton.classList.remove('active');
      skillButton.classList.add('active');
      statName.classList.add('invisible');
      statBoost.classList.add('invisible');
      statTotal.classList.add('invisible');
      skill.classList.remove('invisible');
    });
  });
}

export { switchOnClick };
