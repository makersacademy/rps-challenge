require 'player'
 
describe Player do
  subject(:player) { described_class.new }
  
  describe 'choice' do
    
  it 'player selects rock' do
      allow(player).to receive(:move).and_return ("rock")
      expect(player.move).to eq "rock"
    end
     
    it 'player selects paper' do
      allow(player).to receive(:move).and_return ("paper")
      expect(player.move).to eq "paper"
    end
     
    it 'player selects scissors' do
      allow(player).to receive(:move).and_return ("scissors")
      expect(player.move).to eq "scissors"
    end
  end
end
