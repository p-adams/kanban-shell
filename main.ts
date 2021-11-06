class KanbanBoard {
  columns: Map<
    string,
    Array<{
      title: string;
      description: string;
    }>
  >;
  constructor() {
    this.columns = new Map();
  }
  createTicket(title: string, description: string) {}
  updateTicket(id: string, editField: string) {}
  readTicket(id: string) {}
  deleteTicket(id: string) {}
  moveTicket(fromColumn: string, toColumn: string) {}
}

function main() {
  const kanbanBoard = new KanbanBoard();

  console.log(kanbanBoard);
}

main();
