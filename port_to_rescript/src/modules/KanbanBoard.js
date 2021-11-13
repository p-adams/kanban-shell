export class KanbanBoard {
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
