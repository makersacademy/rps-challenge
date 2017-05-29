  require './lib/computer'

describe Computer do

subject(:Computer) { described_class.new.computer_name('Mr Computer') }

  describe '#computer_name' do
    it "returns the computer players name" do
      computer = Computer.new
      expect(computer.computer_name).to eq("Mr Computer")
    end
  end

  describe '#computer_move' do
    computer = Computer.new.computer_move
    it 'has an array of weapons to randomly choose from' do
      expect(["rock", "paper", "scissors"]).to match_array(["rock", "paper", "scissors"])
    end
    it 'will randomly select one weapon from the computer_move array' do
      expect(computer).not_to eq("nil")
    end
  end
end
