//Create an odd diamond
func printDiamond(size: Int) {
    if size % 2 != 0 {
        print("Diamond with size \(size):")
        var space = size / 2 //amount of spaces needed before going to the next line
        var stars = 1 //amount of asterisks on the first line
        //Create a for loop for the upper half of the diamond
        for _ in 0..<(size / 2 + 1) {
            print(string(repeating: " ", count: space) + string(repeating: "*", count: stars))
            space -= 1
            stars += 2
        }
        //Create variables for the second for loop for bottom half
        space = 1
        stars = size - 2
        }
    }
