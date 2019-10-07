require 'player'

RSpec.describe Player do

  subject(:brooke) { Player.new("Brooke", "Rock") }

  describe '#name' do
    it 'returns its name' do
      expect(brooke.name).to eq("Brooke")
    end
  end

  describe '#move' do
    it 'knows the players move' do
      expect(brooke.move).to eq("Rock")
    end
  end

end
