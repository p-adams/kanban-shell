customElements.define(
  "board-column",
  class extends HTMLElement {
    constructor() {
      super();
      this.title = this.getAttribute("title");
    }
    connectedCallback() {
      this.innerHTML = `
          <div>
            <h4>${this.title}</h4>
            <board-ticket/>
          </div>
        `;
    }
  }
);

customElements.define(
  "board-ticket",
  class extends HTMLElement {
    constructor() {
      super();
    }
    connectedCallback() {
      this.innerHTML = `
          <div class="board-ticket-container">
            <h1>title</h1>
            <h4>subtitle</h4>
          </div>
        `;
    }
  }
);
