class Main {
    main() : Int {{
        (let x : Int <- 2, y : Bool in
           let x : Int in
            x <- 2;
        );
    }};
};