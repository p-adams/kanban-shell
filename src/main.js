class KanbanBoard {
  columns;
  constructor() {
    this.columns = new Map();
  }
  createTicket(title, description) {}
  updateTicket(id, editField) {}
  readTicket(id) {}
  deleteTicket(id) {}
  moveTicket(fromColumn, toColumn) {}
  drawBoard() {}
}

function main() {
  const kanbanBoard = new KanbanBoard();
  console.log(kanbanBoard.drawBoard());
}

window.onload = main;
