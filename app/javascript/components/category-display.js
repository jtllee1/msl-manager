const categoryDisplayOnClick = () => {
  const category = document.getElementById(`category-toggle`);
  category.addEventListener('click', () => {
    document.getElementById(`category-info`).classList.toggle('invisible');
  });
}

export { categoryDisplayOnClick };
