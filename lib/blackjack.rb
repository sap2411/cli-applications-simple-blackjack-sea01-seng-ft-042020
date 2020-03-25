def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(subTotal)
  puts "Your cards add up to #{subTotal}"
  return subTotal
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  return input
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  subTotal = deal_card + deal_card
  display_card_total(subTotal)
end

def hit?(subTotal)
  prompt_user
  input = get_user_input
    if input == 's'
      subTotal
    elsif input == 'h'
      subTotal += deal_card
    else 
      invalid_command
      prompt_user
      get_user_input
    end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  subTotal = initial_round
    until subTotal > 21
     subTotal = hit?(subTotal)
     display_card_total(subTotal)
    end
end_game(subTotal)
end
    
