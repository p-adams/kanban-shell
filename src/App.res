@react.component
let make = () => {
  <div className="terminal">
    <header>
      <div> <span className="close" /> <span className="min" /> <span className="max" /> </div>
      <h3 className="terminal-title"> {React.string("Kanban Shell")} </h3>
    </header>
    <main>
      <section>
        <span> {React.string("IP address @:")} </span>
        <input className="input-prompt" autoFocus={true} />
      </section>
      <section className="menu">
        <ul tabIndex={0}>
          <li> {React.string("home")} </li>
          <li> {React.string("boards")} </li>
          <li> {React.string("help")} </li>
        </ul>
        <article id="home-screen" className="shell-screen">
          <svg viewBox="0 0 125 60" className="sub-title">
            <text y="20"> {React.string("Welcome To")} </text>
          </svg>
          <svg viewBox="0 0 125 40" className="main-title">
            <text y="15"> {React.string("Kanban Shell")} </text>
          </svg>
        </article>
        <article id="boards-screen" className="shell-screen">
          <div className="col-container">
            <div className="col ice-box"> <BoardColumn title="Ice Box" /> </div>
            <div className="col in-progress"> <BoardColumn title="In Progress" /> </div>
            <div className="col done"> <BoardColumn title="Done" /> </div>
          </div>
        </article>
        <article id="help-screen" className="shell-screen">
          <h3> {React.string("Help")} </h3>
        </article>
        <div className="legend" />
      </section>
    </main>
  </div>
}
