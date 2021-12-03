require 'game_logic'

describe GameLogic do
  let(:gm) { described_class.new }
  let(:p1_wins) { "Rock" }
  let(:p2_loses) { "Scissors" }
  let(:p1_loses) { "Paper" }
  let(:p2_wins) { "Scissors" }

  context '#winner'
    it 'can declare Player 1 to win' do
      expect(gm.winner(p1_wins,p2_loses)).to eq("Player 1 wins")
    end

    it 'can declare Player 2 to win' do
      expect(gm.winner(p1_loses,p2_wins)).to eq("Player 2 wins")
    end

end