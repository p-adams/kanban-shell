import { KanbanBoard } from "./modules/KanbanBoard.js";

function main() {
  // const kanbanBoard = new KanbanBoard();

  const input = document.querySelector(".input-prompt");
  const menu = document.querySelector(".menu");
  input.addEventListener("change", (e) => {
    const prompt = e.target.value;
    // toggle menu visibility and render menu
    if (prompt.toUpperCase() === "MENU") {
      menu.style.visibility = "visible";
    } else {
      menu.style.visibility = "hidden";
    }
  });
  const menuItems = document.querySelector(".menu ul");
  menuItems.addEventListener("keydown", (e) => {
    console.log("keydown");
  });
}

export default main;
