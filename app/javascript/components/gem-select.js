const gemSelectOnClick = () => {
  const check = document.getElementById(`select`).innerText;
  if (check) {
    const gems = document.querySelectorAll('.gem-card');
    gems.forEach(function(element) {
      element.addEventListener('click', () => {
        element.classList.toggle('gem-effect');
      });
    });
  };
}

export { gemSelectOnClick };
