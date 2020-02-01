const displayGemOnClick = () => {
  const gemCard = document.getElementById('gem-1');
  gemCard.addEventListener('click', () => {
    alert("Clicked");
  });
}

export { displayGemOnClick };
