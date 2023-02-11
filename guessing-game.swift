print("Guess My Number")
print("It's between 0 and 100")

let correctNumber = Int.random(in: 0 ... 100 )
var guessedRight = false

var str = ""
var num = 0
var guessCount = 0

while (!guessedRight) {

  print("?", terminator: " ")
  str = readLine()!
  num = Int(str) ?? 0
  guessCount += 1

  if num == correctNumber {
    guessedRight = true
  } else if num == -99 {
    print("The number is \(correctNumber)")
    guessCount -= 1
  } else if guessCount > 5 {
    if num < correctNumber {
      print("It's higher. Guess again")
    } else if num > correctNumber {
      print("It's lower. Guess again")
    }
  } else {
    print("Nope! Guess again.")
  }
}

print("You got it! You took \(guessCount) guess\(guessCount == 1 ? "" : "es")")
if guessCount == 1 {
  print("That's incredible!")
}
