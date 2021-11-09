export function handleMenuNavigation(menuItems, screens) {
  let index = 0;
  menuItems.children[index].classList.add("active");
  screens[index].classList.add("active-screen");
  menuItems.addEventListener("keydown", (e) => {
    // left nav
    if (e.which === 37) {
      if (index > 0) {
        index--;
        menuItems.children[index + 1].classList.remove("active");
        screens[index + 1].classList.remove("active-screen");
      }
      // right nav
    } else if (e.which === 39) {
      if (index < menuItems.children.length - 1) {
        index++;
        menuItems.children[index - 1].classList.remove("active");
        screens[index - 1].classList.remove("active-screen");
      }
    }
    menuItems.children[index].classList.add("active");
    screens[index].classList.add("active-screen");
  });
}
