require 'capybara/rspec'

feature 'Player can play Rock, Paper, Scissors' do
  xscenario 'Player can choose from three options'
  xscenario 'Computer can choose from three options'
  xscenario 'Player wins, draws or loses based on results'
end
