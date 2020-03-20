const filterSelectOnClick = () => {
  const filters = document.querySelectorAll(`.element-tag`);
  filters.forEach(function(element) {
    element.addEventListener('click', () => {
      element.classList.toggle('element-select');
    });
  });
}

export { filterSelectOnClick };
