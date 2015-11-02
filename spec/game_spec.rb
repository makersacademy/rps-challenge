require 'game'

describe Game do
  let(:game){described_class.new('George')}

  context 'Stores the player\'s name' do
    it 'stores the player\'s name' do
      expect(game.player_name).to eq 'George'
    end
  end

  context 'Player picks rock, paper or scissors' do
    it 'allows the user to choose' do
      expect(game.select_player_choice(:rock)).to eq :rock
    end
  end

  context 'Game picks rock, paper or scissors' do
    it 'allows the game to choose' do
      allow(game).to receive(:random_number) {0}
      expect(game.select_game_choice).to eq :rock
    end
  end

  context 'Determining the winner' do
    it 'correctly returns the player as winner' do
      allow(game).to receive(:random_number) {1}
      allow(game).to receive(:player_choice) {:rock}
      game.select_game_choice
      expect(game.who_wins).to eq 'George'
    end

    it 'correctly returns the computer as winner' do
      allow(game).to receive(:random_number) {2}
      allow(game).to receive(:player_choice) {:rock}
      game.select_game_choice
      expect(game.who_wins).to eq 'Computer'
    end

    it 'correctly returns a draw' do
      allow(game).to receive(:random_number) {0}
      allow(game).to receive(:player_choice) {:rock}
      game.select_game_choice
      expect(game.who_wins).to eq 'No one! It\'s a draw'
    end
  end
end
