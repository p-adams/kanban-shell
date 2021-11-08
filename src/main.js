import { KanbanBoard } from "./modules/KanbanBoard.js";

function main() {
  const input = document.querySelector(".input-prompt");
  const menu = document.querySelector(".menu");
  // clear prompt
  input.value = "";
  input.addEventListener("change", (e) => {
    const prompt = e.target.value;
    // remove focus from prompt, toggle menu visibility, and render menu
    if (prompt.toUpperCase() === "MENU") {
      menu.style.visibility = "visible";
      input.blur();
      menuItems.focus();
    } else {
      menu.style.visibility = "hidden";
    }
  });

  const menuItems = document.querySelector(".menu ul");
  menuItems.addEventListener("keydown", (e) => {
    if (e.which === 37) {
      console.log("nav left");
    } else if (e.which === 39) {
      console.log("nav right");
    }
  });
}

export default main;
