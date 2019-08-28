def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(11) +1
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  get_user_input = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
end

def hit?(total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    total += deal_card
    puts total
    hit?
  elsif user_input == "s"
    puts total
    hit?
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
