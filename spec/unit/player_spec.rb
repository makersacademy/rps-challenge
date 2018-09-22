require 'player'

describe Player do
  let(:player) { described_class.new('Buffy') }
  let(:game) { double('Game')}
  context '#initialize' do
    it 'expects player to have a name' do
      expect(player.name).to eq 'Buffy'
    end
  end

  context '#choice_setter' do
    it 'expects player to be able to save their choice' do
      player.choice_setter('Scissors')
      expect(player.choice).to eq "Scissors"
    end

    it 'throws an error if something other than set options are given' do
      expect{ player.choice_setter('Bananas') }.to raise_error "That option is not avaiable"
    end
  end
end
