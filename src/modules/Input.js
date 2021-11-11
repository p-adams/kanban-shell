export function handleInput(input, el, elItems) {
  return new Promise((resolve, reject) => {
    input.value = "";
    input.addEventListener("change", (e) => {
      const prompt = e.target.value;
      switch (prompt.toUpperCase()) {
        case "MENU":
          el.style.visibility = "visible";
          input.blur();
          elItems.focus();
          break;
        default:
          el.style.visibility = "hidden";
          break;
      }
      resolve(prompt);
    });
  });
}
