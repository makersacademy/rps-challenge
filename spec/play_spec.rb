require 'play'

describe Play do
  subject(:play) { described_class.new(player_1, player_2, mock_turn) }
  let(:mock_turn) { double 'mock_turns' }
  let(:player_1) { 'Player 1' }
  let(:player_2) { 'Player 2' }
  let(:player_1_result) { 'rock' }
  let(:player_2_result) { 'paper' }

  before do
    allow(mock_turn).to receive(:new).and_return(mock_turn)
    allow(mock_turn).to receive(:run)
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
      expect(play.victory_message).to eq ''
    end
  end

  context '#play' do
    before do
      allow(play).to receive(:players) { [player_1, player_2] }
      allow(play).to receive(:turn) { play }
      allow(play).to receive(:run) { player_1_result }
      allow(play).to receive(:result) {
        { player_1 => player_1_result, player_2 => player_2_result }
      }
    end

    it 'playing populates the result hash' do
      play.play
      expect(play.result).to include(player_1 => player_1_result)
    end
    
    it 'plays each turn' do
      expect(play.play).to eq "#{player_2} won!"
    end
  end
end
