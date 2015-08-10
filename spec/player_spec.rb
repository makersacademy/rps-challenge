require 'player.rb'

describe Player do 

  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:throws).with(1).argument() }
  
  describe '#throw' do
    it 'will return a weapon' do
      weapon = double()
      expect(subject.throws weapon).to eq weapon
    end
  end
end