require 'player'


describe Player do

  subject(:player) {described_class.new 'Harry'}

  context '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq 'Harry'
    end
  end

  context '#choice' do
    it 'can return the most recent player choice (rock)' do
      player.rock
      expect(player.choice).to eq :rock
    end

    it 'can return scissors' do
      player.scissors
      expect(player.choice).to eq :scissors
    end

    it 'can return paper' do
      player.paper
      expect(player.choice).to eq :paper
    end
  end

end
