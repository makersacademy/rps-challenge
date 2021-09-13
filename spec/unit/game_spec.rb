require_relative '../../lib/game'

describe Game do 

  context 'Player picks rock, paper or scissors' do
    game = Game.new
    it 'allows the user to choose' do
    expect(game.select_player_choice(:rock)).to eq :rock
    end
  end

  context 'Computer picks rock, paper or scissors' do
    game = Game.new 
    it 'allows the game to choose' do
      allow(game).to receive(:random_number) {0}
      expect(game.select_computer_choice).to eq :rock
    end
  end

#   Testing out all scenarios where the player choice is rock
  context 'Determining the winner' do
    game = Game.new
    #  getting an error message about this test as it is returning nil
    it 'correctly returns the player as winner' do
      allow(game).to receive(:random_number) {1}
      allow(game).to receive(:player_choice) {:rock}
      game.select_computer_choice
      expect(game.who_wins).to eq :marketer_name_1
    end

    #  getting an error message about this test as it is returning nil
    it 'correctly returns the computer as winner' do
    game = Game.new
      allow(game).to receive(:random_number) {2}
      allow(game).to receive(:player_choice) {:rock}
      game.select_computer_choice
      expect(game.who_wins).to eq 'Computer'
    end

    it 'correctly returns a draw' do
    game = Game.new
      allow(game).to receive(:random_number) {0}
      allow(game).to receive(:player_choice) {:rock}
      game.select_computer_choice
      expect(game.who_wins).to eq 'It\'s a draw'
    end
  end
end 