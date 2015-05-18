feature 'Player enters the game' do
  
  let(:player){Player.new}
  let(:computer){Computer.new}

  scenario 'Player can choose between rock, paper and scissors' do
  	player.player_choice 'rock'
  	expect(player.choice).to eq 'rock'
  	player.player_choice 'paper'
  	expect(player.choice).to eq 'paper'
  	player.player_choice 'scissors'
  	expect(player.choice).to eq 'scissors'
  end

  scenario 'Player cannot choose anything other than rock, paper or scissors' do
  	expect{ player.player_choice 'orangutan' }.to raise_error "You can\'t use that in a rock, paper, scissors game!"
  end

  xscenario 'Computer chooses randomly between rock, paper and scissors' do
  	# NOT SURE HOW THIS CAN BE TEST - TRIED USING PIPES AND DIDN'T WORK?
    game = Game.new
    computer = Computer.new
    expect(computer).to receive(:computer_choice).and_return('monkey')
    expect(computer.choice).to eq 'paper'
  end

end