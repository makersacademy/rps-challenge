require 'player'

describe Player do

  subject(:hunor) { described_class.new('Hunor') }

  it 'has a name' do
    expect(hunor.name).to eq 'Hunor'
  end

  subject(:computer) { described_class.new('Computer') }

  it 'has default name' do
    expect(computer.name).to eq 'Computer'
  end

  context 'computer random choice' do
    subject(:new_player) { described_class.new }

    it 'responds to #comp_rand' do
      expect(new_player).to respond_to(:comp_rand)
    end

    it 'has to return rock or paper or scissors' do
      allow(new_player).to receive(:comp_rand) { 'rock' }
      expect(new_player.comp_rand).to eq('rock')
    end
  end

end
