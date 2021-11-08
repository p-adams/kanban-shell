import { KanbanBoard } from "./modules/KanbanBoard.js";
import { handleInput } from "./modules/Input.js";
import { handleMenuNavigation } from "./modules/Menu.js";

function main() {
  const input = document.querySelector(".input-prompt");
  const menu = document.querySelector(".menu");
  const menuItems = document.querySelector(".menu ul");
  handleInput(input, menu, menuItems);
  handleMenuNavigation(menuItems);
}

export default main;
