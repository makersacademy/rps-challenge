require 'computer_player'

describe ComputerPlayer do

  subject(:computer_player) { described_class.new }

  describe '#self.create' do
    it 'created a new instance of self' do
      expect(ComputerPlayer.create).to be_an_instance_of described_class
    end
  end

  describe '#self.instance' do
    it 'allows us to access an instance of Player' do
      comp_player = ComputerPlayer.create
      expect(ComputerPlayer.instance).to eq comp_player
    end
  end

  describe '#name' do
    it 'has a name' do
      new_computer_player = described_class.new("My Computer")
      expect(new_computer_player.name).to eq "My Computer"
    end
  end

  describe '#weapons' do
    it 'has a selection of weapons' do
      expect(computer_player.weapons).to eq ["rock", "paper", "scissors"]
    end
  end

  describe '#weapon' do
    it 'randomly chooses a wepaon' do
      allow(computer_player.weapons).to receive(:sample).and_return("paper")
      expect(computer_player.weapon).to eq "paper"
    end
  end

end
