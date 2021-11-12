class BoardTicket extends HTMLElement {
  constructor() {
    super();
    console.log("test");
  }
  connectedCallback() {
    this.innerHTML = `
      <h1>Hello world</h1>
      <p>lorem ipsum</p>
    `;
  }
}

customElements.define("board-ticket", BoardTicket);
