type shellTabs = DEFAULT | MENU | BOARDS

@react.component
let make = () => {
  let (prompt, setPrompt) = React.useState(_ => "")
  let (commandErrors, setCommandErrors) = React.useState(_ => "")
  let (commandWarnings, setCommandWarnings) = React.useState(_ => "")
  let (currentShellTab, setCurrentShellTab) = React.useState(_ => DEFAULT)
  let onSubmit = e => {
    ReactEvent.Form.preventDefault(e)

    switch prompt->Js.String2.toUpperCase {
    | "MENU" => setCurrentShellTab(_ => MENU)
    | _ => setCommandErrors(_ => "invalid command")
    }
  }

  let handleChange = e => {
    setPrompt(ReactEvent.Form.target(e)["value"])
    setCurrentShellTab(_ => DEFAULT)
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
        {Js.String.length(commandErrors) > 0 || Js.String.length(commandWarnings) > 0
          ? <div className="prompt-feedback">
              {React.string(commandErrors)} {React.string(commandWarnings)}
            </div>
          : <> </>}
      </section>
      {switch currentShellTab {
      | MENU => <MenuScreen />
      | BOARDS => <BoardsScreen />
      | DEFAULT => <> </>
      }}
    </main>
  </div>
}
