export function handleInput(input, menu, menuItems) {
  return new Promise((resolve, reject) => {
    input.value = "";
    input.addEventListener("change", (e) => {
      const prompt = e.target.value;
      switch (prompt.toUpperCase()) {
        case "MENU":
          menu.style.visibility = "visible";
          input.blur();
          menuItems.focus();
          break;
        default:
          menu.style.visibility = "hidden";
          break;
      }
      resolve(prompt);
    });
  });
}
