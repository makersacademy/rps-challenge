require 'player'

describe Player do
  let(:player) { described_class.new('Willow') }
  let(:game) { double('Game') }
  context '#initialize' do
    it 'expects player to have a name' do
      expect(player.name).to eq 'Willow'
    end
  end

  context '#choice_setter' do
    it 'expects player to be able to save their choice' do
      player.choice_setter('scissors')
      expect(player.choice).to eq "scissors"
    end

    it 'throws an error if something other than set options are given' do
      expect { player.choice_setter('Bananas') }.to raise_error "That option is not avaiable"
    end

    it 'chooses randomly from the choices selection if no option passed' do
      srand(90)
      player.choice_setter
      expect(player.choice).to eq "paper"
    end
  end
end
