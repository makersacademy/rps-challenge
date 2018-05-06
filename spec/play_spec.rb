require 'play'

describe Play do
  subject(:play) { described_class.new(player_1, player_2, mock_turn) }
  let(:mock_turn) { double 'mock_turns' }
  let(:player_1) { 'Player 1' }
  let(:player_2) { 'Player 2' }
  let(:mock_turn_option) { 'rock' }

  before do
    allow(mock_turn).to receive(:new).and_return(mock_turn)
    allow(mock_turn).to receive(:run).and_return(mock_turn_option)
  end

  context '#initialize' do
    it 'Add players to the players array' do
      expect(play.players).to include player_1
      expect(play.players).to include player_2
    end
    it 'Turn type known' do
      expect(play.turn).to eq mock_turn
    end
    it '@result is empty' do
      expect(play.result).to be_empty
    end
    it '@message is empty' do
      expect(play.message).to eq ''
    end
  end

  context '#play' do
    it 'plays each turn' do
      expect(play.play).to eq [player_1, player_2]
    end
    it 'playing populates the result hash' do
      allow(play).to receive(:players) { [player_1] }
      allow(play).to receive(:turn) { play }
      allow(play).to receive(:run) { mock_turn_option }

      play.play
      expect(play.result).to include(player_1 => mock_turn_option )
    end
  end
end
