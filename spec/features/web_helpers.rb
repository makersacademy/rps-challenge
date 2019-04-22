def sign_in_and_play
  visit ('/')
  fill_in :name, :with => "Tara"
  click_button "Submit"
end

def computer_move_chosen
  Computer.new.move
  srand(2)
end

def rock
  click_button "Rock"
end

def paper
  click_button "Paper"
end

def scissors
  click_button "Scissors"
end
