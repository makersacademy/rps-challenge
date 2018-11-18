require 'player'

describe Player do
  subject(:lorna) { Player.new('Lorna') }

  describe '#name' do
    it 'returns the name' do
      expect(lorna.name).to eq 'Lorna'
    end
  end

  describe '#player_move' do
    it "player to make move" do
      expect(lorna.player_move).to eq 'Rock'
    end
  end

  describe '#computer_move' do
    it "returns computers move" do
      expect(subject.computer_move).to eq 'Paper' || 'Rock' || 'Scissors'
    end
  end

end
