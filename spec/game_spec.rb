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
      expect(game.set_player_choice(:rock)).to eq :rock
    end
  end

  context 'Game picks rock, paper or scissors' do
    it 'allows the game to choose' do
      allow(game).to receive(:random_number) {0}
      expect(game.set_game_choice).to eq :rock
    end
  end

  context 'Determining the winner' do
    it 'returns the winner based on what was picked' do
      allow(game).to receive(:player_choice) {:rock}
      allow(game).to receive(:game_choice) {:paper}
      expect(game.who_wins).to eq ('Computer')
    end
  end
end
