export function handleMenuNavigation(menuItems) {
  let index = 0;
  menuItems.children[index].classList.add("active");
  menuItems.addEventListener("keydown", (e) => {
    // left nav
    if (e.which === 37) {
      if (index > 0) {
        index--;
        menuItems.children[index + 1].classList.remove("active");
      }
      // right nav
    } else if (e.which === 39) {
      if (index < menuItems.children.length - 1) {
        index++;
        menuItems.children[index - 1].classList.remove("active");
      }
    }
    menuItems.children[index].classList.add("active");
  });
}
