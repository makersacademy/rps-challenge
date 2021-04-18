require 'player'

describe Player do

  let(:subject) { described_class.new('Finn') }

  it {is_expected.to respond_to :name}

  context 'once initialized' do
    describe '#name' do
      it 'returns the player name' do
        expect(subject.name).to eq 'Finn'
      end
    end
  end
end