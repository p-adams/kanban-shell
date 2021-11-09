import { KanbanBoard } from "./modules/KanbanBoard.js";
import { handleInput } from "./modules/Input.js";
import { handleMenuNavigation } from "./modules/Menu.js";

function main() {
  const input = document.querySelector(".input-prompt");
  const menu = document.querySelector(".menu");
  const menuItems = document.querySelector(".menu ul");
  const homeScreen = document.querySelector(".menu #home-screen");
  const boardsScreen = document.querySelector(".menu #boards-screen");
  const helpScreen = document.querySelector(".menu #help-screen");
  handleInput(input, menu, menuItems, (prompt) => {
    if (prompt) {
      handleMenuNavigation(menuItems, [homeScreen, boardsScreen, helpScreen]);
    }
  });
}

export default main;
