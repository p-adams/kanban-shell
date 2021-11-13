@react.component
let make = () => {
  let (prompt, setPrompt) = React.useState(_ => "")
  let (commandErrors, setCommandErrors) = React.useState(_ => "")
  let (currentShellTab, setCurrentShellTab) = React.useState(_ => "")
  let onSubmit = e => {
    ReactEvent.Form.preventDefault(e)

    switch prompt->Js.String2.toUpperCase {
    | "MENU" => setCurrentShellTab(_ => "MENU")
    | _ => setCommandErrors(_ => "invalid command")
    }
  }

  let handleChange = e => {
    setPrompt(ReactEvent.Form.target(e)["value"])
    setCurrentShellTab(_ => "")
    setCommandErrors(_ => "")
  }

  <div className="terminal">
    <header>
      <div> <span className="close" /> <span className="min" /> <span className="max" /> </div>
      <h3 className="terminal-title"> {React.string("Kanban Shell")} </h3>
    </header>
    <main>
      <section className="prompt">
        <div className="wrapper">
          <span> {React.string("IP address @:")} </span>
          <form onSubmit={e => onSubmit(e)}>
            <input
              className="input-prompt"
              value={prompt}
              autoFocus={true}
              onChange={e => handleChange(e)}
            />
          </form>
        </div>
        {Js.String.length(commandErrors) > 0 ? <div> {React.string(commandErrors)} </div> : <> </>}
      </section>
      {currentShellTab === "MENU"
        ? <section className="menu">
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
        : <> </>}
    </main>
  </div>
}
