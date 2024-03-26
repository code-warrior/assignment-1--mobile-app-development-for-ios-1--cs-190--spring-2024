func printDiamond(size: Int) {
    if size % 2 != 0 { //Creating an odd diamond
        print("Diamond with size \(size):")
        var space = size / 2 //space refers to the amount of spaces needed before going to the next line
        var stars = 1 //the initial amount of asterisks on the first line
        for _ in 0..<(size / 2 + 1) {
            print(string(repeating: " ", count: space) + string(repeating: "*", count: stars))
            space -= 1
            stars += 2
        } //this for loop is meant for the top half of the diamond as it approaches the middle (users input)
        }
    }
