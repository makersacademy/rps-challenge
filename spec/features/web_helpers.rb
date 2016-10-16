def sign_in_and_play
  visit ('/')
  fill_in :name, with: "jini"
  click_button "BEGIN!"
end

def possible_choices_computer
  [:ROCK, :PAPER, :SCISSORS].map {|choice| "#{choice.to_s}"}
end
