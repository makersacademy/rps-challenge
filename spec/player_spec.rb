require 'player.rb'

describe Player do 

  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:throw).with(1).argument() }
  
  describe '#throw' do
    it 'will return a weapon' do
      weapon = double()
      expect(subject.throw weapon).to eq weapon
    end
  end
end