require 'player'

describe Player do
  subject(:lorna) { Player.new('Lorna', 'Paper') }

  describe '#name' do
    it 'returns the name' do
      expect(lorna.name).to eq 'Lorna'
    end
  end

  describe '#player_move' do
    it "player to make move" do
      expect(lorna.player_move).to eq 'Paper'
    end
  end

  describe '#computer_move' do
    it "returns computers move" do
      ['Paper', 'Rock', 'Scissors'].include? (lorna.computer_move)
    end
  end

end
