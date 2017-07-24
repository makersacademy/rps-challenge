require 'game'

describe Game do
  subject(:game) { described_class.new("Bob", "Frank") }
  let(:player_1) { double 'player', :name => "Bob" }
  let(:player_2) { double 'player',:name => "Frank" }
  before do
    game
  end
  describe '#rules' do
    it 'knows the rules of the game and judges a winner and a loser' do
      result = [2, 0]
      expect(game.rules("Rock", "Sissors")).to eq(result)
    end

    it 'can judge a draw' do
      result = [1, 1]
      expect(game.rules("Sissors", "Sissors")).to eq(result)
    end
  end

  describe '#declares a winner' do
    it 'returns a string declaring a winner' do
      expect(game.declares_a_winner("Rock", "Paper")).to eq("Frank wins!")
    end

    it 'returns a string declaring a winner' do
      expect(game.declares_a_winner("Rock", "Sissors")).to eq("Bob wins!")
    end

    it 'returns a string declaring a Draw' do
      expect(game.declares_a_winner("Rock", "Rock")).to eq("It's a Draw!")
    end

  end
  # 
  # describe '#one_player' do
  #   it 'directs the flow of the game if there are two or one players' do
  #     expect(game.one_player(1)).to eq(1)
  #   end
  # end

end
