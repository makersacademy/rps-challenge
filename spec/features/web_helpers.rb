def sign_in_and_play
  visit ('/')
  fill_in :name, with: "jini"
  click_button "BEGIN!"
end

def choose_rock
  sign_in_and_play
  click_button "ROCK"
  expect(page).to have_content "You chose ROCK"
end

def possible_choices_computer
  [:ROCK, :PAPER, :SCISSORS].map {|choice| "#{choice.to_s}"}
end

def possible_outcomes
  ["YOU WIN!", "YOU LOSE!", "TIE GAME!"]
end
