//  Create an odd diamond
func printDiamond(size: Int) {

  if size % 2 != 0 {
    print("Diamond with a size of \(size):")
    var space = size / 2 //  Amount of spaces needed before going to the next line
    var stars = 1 //  Amount of asterisks on the first line
    //  Create a for loop for the upper half of the diamond
    for _ in 0..<(size / 2 + 1) {
        print(String(repeating: " ", count: space) + String(repeating: "*", count: stars))
        space -= 1
        stars += 2
    }

    //  Create variables for the second for loop for bottom half
    space = 1
    stars = size - 2
    //  Create a for loop for the bottom half of the diamond
    for _ in 0..<(size / 2) {
        print(String(repeating: " ", count: space) + String(repeating: "*", count: stars))
        space += 1
        stars -= 2
    }

    //  Create an even diamond
  } else {
      print("Diamond with a size of \(size):")
      //  Print a singular asterisk before the for loop
      print(String(repeating: " ", count: size - 1) + "* ", terminator: "")
      var space = size / 2
      var stars = 1
      //  Create a for loop for the upper half of the diamond
      for _ in 0..<(size / 2) {
          print(String(repeating: " ", count: space * 2) + String(repeating: "* ", count: stars - 1))
          space -= 1
          stars += 2
      }

      //  Create a for loop for the bottom half of the diamond
      for _ in 0..<(size / 2) {
          print(String(repeating: " ", count: space * 2) + String(repeating: "* ", count: stars - 1))
          space += 1
          stars -= 2
      }

      //  Print the singular asterisk at the bottom
      print(String(repeating: " ", count: size - 1) + "* ")
    }
}
//  Ask the user for their input and print the diamond
print("Enter the size of your diamond:")
if let size = Int(readLine() ?? "") {
    printDiamond(size: size)
} else {
    print("Error, please enter a number")
}
