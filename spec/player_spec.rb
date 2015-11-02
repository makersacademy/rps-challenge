require 'player'

describe Player do
  subject(:player){ Player.new }

  context '#set_name' do
    it 'sets the player\'s name' do
      player.set_name(:name)
      expect(player.name).to eq (:name)
    end
  end

  context '#reset' do
    it 'resets the player\'s choice' do
      player.set_choice
      player.reset
      expect(player.choice).to eq (nil)
    end
  end

  context '#set_choice' do
    it 'sets the player\'s choice if given as an argument' do
      player.set_choice(:choice)
      expect(player.choice).to eq (:choice)
    end
    it 'sets to :rock with probability 0.333' do
      allow(Kernel).to receive(:rand) { 0.332 }
      player.set_choice
      expect(player.choice).to eq (:rock)
    end
    it 'sets to :paper with probability 0.333' do
      allow(Kernel).to receive(:rand) { 0.665 }
      player.set_choice
      expect(player.choice).to eq (:paper)
    end
    it 'sets to :scissors with probability 0.333' do
      allow(Kernel).to receive(:rand) { 0.999 }
      player.set_choice
      expect(player.choice).to eq (:scissors)
    end
  end

  context '#choice' do
    it 'is nil if #set_choice has not been called' do
      expect(player.choice).to be_nil
    end
  end

end
