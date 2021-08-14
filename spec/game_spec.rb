require 'game'

describe Game do

  let(:player_1) { double('Tom') }
  let(:player_2) { double('Jerry') }

  let(:game) { described_class.new(player_1_class: player_1, player_2_class: player_2)}

  it 'is initialized with a player' do
    expect(game.player_1).to eq(player_1)
  end

  describe ' #calculate' do

    it 'allows a winner' do
      allow(game).to receive(:winner) { player_1 }
      expect(game.winner).to eq(player_1)
    end

    it 'allows a loser' do
      allow(game).to receive(:winner) { player_1 }
      expect(game.winner).to eq(player_1)
    end

    it 'is a tie if winner and loser are nil' do
      expect(game.winner).to eq(nil)
      expect(game.loser).to eq(nil)
    end

  end

  describe ' #reset_winner_loser' do

    it 'is expected to reset the winner loser values' do
      allow(game).to receive(:winner) { player_1 }
      allow(game).to receive(:loser) { player_2 }
      expect(game.reset_winner_loser).to eq(nil)
    end

  end

end