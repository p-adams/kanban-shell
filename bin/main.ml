let init_kanban_board n =
    let kanban_board = Hashtbl.create n
    Hashtbl.add kanban_board "Ice Box" []
    Hashtbl.add kanban_board "In Progress" []
    Hashtbl.add kanban_board "Done" []
    kanban_board


let () =
    let board = init_kanban_board 3
    Hashtbl.iter (fun key val -> Printf.printf "%s\n" key) board
    