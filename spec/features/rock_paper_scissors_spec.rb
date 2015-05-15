require 'player'

feature 'Player enters the game' do
  scenario 'Player can choose between rock, paper and scissors' do
  	player = Player.new
  	player.player_choice 'rock'
  	expect(player.choice).to eq 'rock'
  	player.player_choice 'paper'
  	expect(player.choice).to eq 'paper'
  	player.player_choice 'scissors'
  	expect(player.choice).to eq 'scissors'
  end

  xscenario 'Player cannot choose anything other than rock, paper or scissors' do
  end

  xscenario 'Computer chooses between rock, paper and scissors' do
  end

  xscenario '' do
  end
end