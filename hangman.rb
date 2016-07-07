#start
words = ["Putin", "dictionary", "mancala", "judgement", "strategy", "patience", "thrones", "game", "coral"]
total_chances = 10
puts "Let's play hangman"
puts "Guess"
text = gets.chomp
wrong_try = 0
right_guess = ""


word = words[rand(words.length) - 1]


def get_placeholder sample_word, guessed_words
  placeholder = "_"
  sample_word.chars { |char|
    placeholder += (guessed_words.include? char)? char : '#'
  }

  placeholder
end



puts "clear"
puts "Guess what is:" + get_placeholder(word, "")
p word

while true
  print "Enter word [#{total_chances - wrong_try} chances left]:"

  char = gets.chomp
  puts "clear"

  if word.include? char

    if(right_guess.include? char)
        puts char + "is already given"
        puts " Try another:" + get_placeholder(word, right_guess)
    else
      right_guess =  right_guess + char
      placeholder = get_placeholder(word, right_guess)

      puts "Great" + placeholder
    end

    unless placeholder.include? "#"
      puts "Good Job!"
      puts "You win"
      break
    end


  else
    puts "Wrong letter '#{char}'"
    wrong_try += 1
  end

  if (wrong_try == total_chances)
    puts "Loser"
    break
  end


  puts "Try again: " + get_placeholder(word, right_guess)
end
