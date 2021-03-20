require 'game'

describe Game do
  let(:new_game) { Game.new("Crazy Teaspoon") }
  let(:player1) { "Rock" }
  let(:player2) { "Paper" }
  let(:player3) { "Scissors" }
  let(:computer1) { "Rock" }
  let(:computer2) { "Paper" }
  let(:computer3) { "Scissors" }

  it 'initializes a computer variable with a random choice' do
    allow(new_game).to receive(:computer).and_return "Scissors"
    expect(new_game.computer).to eq("Scissors")
  end

  it 'has a random method' do
    expect(Game).to respond_to(:random)
  end

  describe '#win_lose_draw' do
    it 'returns win if player wins' do
      expect(new_game.win_lose_draw(player1, computer3)).to eq "win"
      expect(new_game.win_lose_draw(player2, computer1)).to eq "win"
      expect(new_game.win_lose_draw(player3, computer2)).to eq "win"
    end

    it 'returns lose if computer wins' do
      expect(new_game.win_lose_draw(player3, computer1)).to eq "lose"
      expect(new_game.win_lose_draw(player1, computer2)).to eq "lose"
      expect(new_game.win_lose_draw(player2, computer3)).to eq "lose"
    end

    it 'returns draw if player and computer have the same choice wins' do
      expect(new_game.win_lose_draw(player1, computer1)).to eq "draw"
      expect(new_game.win_lose_draw(player2, computer2)).to eq "draw"
      expect(new_game.win_lose_draw(player3, computer3)).to eq "draw"
    end

  end
end
