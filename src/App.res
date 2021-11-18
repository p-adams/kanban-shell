type shellTabs = DEFAULT | MENU | BOARDS
type alertLevel = ERROR | WARNING | INFO | NONE
type alert = {message: string, level: alertLevel}
@react.component
let make = () => {
  let (prompt, setPrompt) = React.useState(_ => "")
  let (alert, setAlert) = React.useState(_ => {message: "", level: NONE})
  let (currentShellTab, setCurrentShellTab) = React.useState(_ => DEFAULT)
  let onSubmit = e => {
    ReactEvent.Form.preventDefault(e)

    switch prompt->Js.String2.toUpperCase {
    | "MENU" => setCurrentShellTab(_ => MENU)
    | _ => setAlert(_ => {message: "invalid command", level: ERROR})
    }
  }

  let handleChange = e => {
    setPrompt(ReactEvent.Form.target(e)["value"])
    setCurrentShellTab(_ => DEFAULT)
    setAlert(_ => {message: "", level: NONE})
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
        <div className="prompt-feedback">
          {switch alert.level {
          | ERROR => <div className="error"> {React.string(alert.message)} </div>
          | WARNING => <div className="warning"> {React.string(alert.message)} </div>
          | INFO => <div className="info"> {React.string(alert.message)} </div>
          | NONE => <> </>
          }}
        </div>
      </section>
      {switch currentShellTab {
      | MENU => <MenuScreen />
      | BOARDS => <BoardsScreen />
      | DEFAULT => <> </>
      }}
    </main>
  </div>
}
