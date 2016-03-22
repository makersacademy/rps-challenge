require 'player'

describe Player do
  subject(:player) { described_class.new("player") }

  describe '#initialize' do
    it 'should initialize with a name saved to an instance variable' do
      expect(player.player_name).to eq("player")
    end

    it 'should initialize with an array of weapons' do
      weapons_arr = ["Rock", "Paper", "Scissors"]
      expect(player.weapons).to eq(weapons_arr)
    end
  end

  describe '#choose_random' do
    it 'should choose a random weapon and assign to instance variable choice' do
      allow(Kernel).to receive(:rand).and_return(0)
      player.choose_random
      expect(player.choice).to eq("Rock")
    end
  end

  describe '#weapon' do
    it 'should display weapon' do
      player.player_choice("Paper")
      expect(player.weapon).to eq("Paper")
    end
  end

  describe '#name' do
    it 'should display the player name' do
      expect(player.name).to eq("player")
    end
  end

end
