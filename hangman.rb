#start # ~> NameError: undefined local variable or method `thirsty' for main:Object
word = "Putin"
guesses = [10]    # ~> NameError: undefined local variable or method `game' for main:Object
rand_list = [organic, genetically, synthetic]
puts "Let's play hangman"
puts "Guess"
guess = gets.chomp

def initialize (word, guesses)
    @word = word
    @guesses = guesses
end





# ~> NameError
# ~> undefined local variable or method `game' for main:Object
# ~>
# ~> /Users/tonyun/Desktop/class/hangman/hangman.rb:2:in `<main>'
