require 'rps'

describe RPS do
  let(:player_1_mock) { double(Player, name: "Wendy") }

  describe '#new' do
    it 'stores the players name' do
      game = RPS.new("Wendy")
      expect(game.player).to eq("Wendy")
    end
  end

  describe '#game' do
    it 'calculates the winner' do
      game = RPS.new(player_1_mock)
      expect(game.calculate_winner("Rock", "Paper")).to eq("Paper covers rock. The computer wins!")
      expect(game.calculate_winner("Rock", "Scissors")).to eq("Rock smashes scissors. Wendy wins!")
      expect(game.calculate_winner("Paper", "Scissors")).to eq("Scissors cuts paper. The computer wins!")
      expect(game.calculate_winner("Paper", "Rock")).to eq("Paper covers rock. Wendy wins!")
      expect(game.calculate_winner("Scissors", "Rock")).to eq("Rock smashes scissors. The computer wins!")
      expect(game.calculate_winner("Scissors", "Paper")).to eq("Scissors cuts paper. Wendy wins!")
    end

    it 'returns a draw' do
      game = RPS.new(player_1_mock)
      expect(game.calculate_winner("Rock", "Rock")).to eq("Great minds think alike, It's a draw!")
      expect(game.calculate_winner("Paper", "Paper")).to eq("Great minds think alike, It's a draw!")
      expect(game.calculate_winner("Scissors", "Scissors")).to eq("Great minds think alike, It's a draw!")
    end
  end
end
