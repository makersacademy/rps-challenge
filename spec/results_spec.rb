require 'results'

describe Results do
  subject(:results) { Results.new(options) }
  let(:options) { {"player_name" => "Alessa", "player_move" => :rock, "computer_move" => :rock} }

  describe "player_name" do
    it 'returns players name' do
      expect(results.player_name).to eq("Alessa")
    end
  end

  describe "player_move" do
    it 'returns players move' do
      expect(results.player_move).to eq :rock
    end
  end

  describe "computer_move" do
    it 'returns computers move' do
      expect(results.computer_move).to eq :rock
    end
  end

  describe "one game outcome is a draw" do
    it 'returns string when game is a draw' do
      expect(results.check_results("rock", "rock")).to eq("It's a draw!")
    end
  end

  describe "one game outcome is player wins" do
    it 'returns string when the player has won the game' do
      expect(results.check_results("rock", "paper")).to eq("You won!")
    end
  end
end
