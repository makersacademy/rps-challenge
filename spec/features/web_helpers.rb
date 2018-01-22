def sign_in_and_play
  visit('/')
  click_button 'play'
  fill_in :name, with: 'Ellie'
  click_button 'Start'
end

def visit_how_to
  visit ('/')
  click_button 'play'
end

def set_computer_response
  allow_any_instance_of(Computer).to receive(:choice) { "rock" }
end

def win
  set_computer_response
  2.times {
    click_on 'Paper'
    click_on 'Back'
  }
  click_on 'Paper'
end

def lose
  set_computer_response
  2.times {
    click_on 'Scissors'
    click_on 'Back'
  }
  click_on 'Scissors'
end

def draw
  set_computer_response
  click_on 'Rock'
end

def lose_once
  set_computer_response
  click_on 'Scissors'
end

def win_once
  set_computer_response
  click_on 'Paper'
end
