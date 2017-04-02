require 'game'

describe Game do
  subject(:game) { described_class.new(player1) }
  let(:player1) { double :player1, name: 'ruan' }
  let(:robot) { double :robot }

  describe '#initialization' do
    it 'initalizes a game with a human player' do
      expect(game.player).to eq player1
    end
  end

  describe '#player_choice' do
    it 'should return the button the player clicked' do
      game.player_choice('rock')
      expect(game.user_choice).to eq 'rock'
    end
  end

  describe '#update_round' do
    it 'updates round by one' do
      allow(game).to receive(:round_number) { 2 }
      expect(game.update_round).to eq 3
    end
  end

  describe '#round_winner' do
    before do
      game.player_choice('rock')
    end

    context 'if a draw' do
      it "returns 'draw' if a draw" do
        allow(game).to receive(:game_choice) { 'rock' }
        expect(game.round_winner).to eq 'draw'
      end
    end

    context 'if player wins' do
      it 'returns the player if they win' do
        allow(game).to receive(:game_choice) { 'scissors' }
        expect(game.round_winner).to eq player1.name
      end
    end

    context 'if robot wins' do
      it 'returns robot if they win' do
        allow(game).to receive(:game_choice) { 'paper' }
        expect(game.round_winner).to eq 'robot'
      end
    end

    # it 'adds count to winners ' do
    #
    # end
  end


end
