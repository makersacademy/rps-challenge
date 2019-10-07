require 'player'

describe Player do

  let(:name) { double :name }
  let(:option) { double :option }

  subject { described_class.new(name) }

  it 'returns a name' do
    expect(subject.name).to eq name
  end

  describe '#move' do
    it 'can choose and option' do
      expect{ subject.move(option) }.to change { subject.option }.from(nil).to option
    end

    it 'returns either rock , paper or scissors' do
      expect(subject.random_move).to eq(:rock).or eq(:paper).or eq(:scissors)
    end
  end
end
