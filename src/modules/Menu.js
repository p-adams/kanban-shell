export function handleMenuNavigation(menuItems) {
  menuItems.addEventListener("keydown", (e) => {
    if (e.which === 37) {
      console.log("nav left");
    } else if (e.which === 39) {
      console.log("nav right");
    }
  });
}
