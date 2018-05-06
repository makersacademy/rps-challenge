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
      allow(play).to receive(:run)
    end

    it 'Playing populates the result hash' do
      allow(play).to receive(:result) {
        { player_1 => player_1_result, player_2 => player_2_result }
      }

      play.play(player_1_result, player_2_result)
      expect(play.result).to include(player_1 => player_1_result)
    end

    it 'Player 1 can win' do
      allow(play).to receive(:result) {
        { player_1 => player_2_result, player_2 => player_1_result }
      }

      expect(play.play(player_2_result, player_1_result)).to eq "#{player_1} won!"
    end

    it 'Player 2 can win' do
      allow(play).to receive(:result) {
        { player_1 => player_1_result, player_2 => player_2_result }
      }

      expect(play.play(player_1_result, player_2_result)).to eq "#{player_2} won!"
    end

    it 'Can be a draw' do
      allow(play).to receive(:result) {
        { player_1 => player_1_result, player_2 => player_1_result }
      }
      play.play(player_1_result, player_1_result)

      expect(play.victory_message).to eq "It's a draw"
    end
  end
end
