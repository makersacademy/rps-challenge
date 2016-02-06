require 'player'


describe Player do

  subject(:player) {described_class.new 'Harry'}

  context '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq 'Harry'
    end
  end

  context '#choice' do
    it 'can return the most recent player choice' do
      player.rock
      expect(player.choice).to eq :rock
    end
  end

  context '#rock' do
    it 'player can choose rock' do
      expect(player.rock).to eq :rock
    end
  end

  context '#paper' do
    it 'player can choose rock' do
      expect(player.paper).to eq :paper
    end
  end

  context '#scissors' do
    it 'player can choose scissors' do
      expect(player.scissors).to eq :scissors
    end
  end
  
end
