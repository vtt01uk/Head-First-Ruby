#Prompt the player to enter their name
puts "Welcome to the guess game!"
puts "Enter your name: "
name = gets.chomp
puts "Welcome #{name}."

target = rand(100) + 1
puts "I'm thinking of a number. Can you guess it?"

tries = 0
found = false

until tries == 10 || found
  puts "You have #{10 - tries} guesses left.."
  puts "Enter a number: "
    guess = gets.to_i
    tries += 1

  if guess < target
    puts "Oops. Your guess was LOW."
  elsif guess > target
    puts "Oops. Your guess was HIGH."
  else guess == target
    puts "Good job, #{name}! You guessed my number in #{tries} guesses!"
    found = true
  end
end

unless found
  puts "Sorry. You didn't get my number. My number was #{target}"
end

