require 'winner_logic'

describe Winner do

  describe '#result_calc' do
    it 'works out the winner of rps' do
      winner = Winner.new
      expect(winner.result_calc("Scissors", "Paper")).to eq("You, you brilliant bastard.")
    end

    it 'works out the winner of rps' do
      winner = Winner.new
      expect(winner.result_calc("Rock", "Paper")).to eq("The computer :(")
    end

    it 'works out the winner of rps' do
      winner = Winner.new
      expect(winner.result_calc("Rock", "Rock")).to eq("No one! It's a draw!")
    end
  end
end
