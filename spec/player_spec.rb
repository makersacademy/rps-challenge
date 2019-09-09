require 'player'

describe Player do
  subject(:rocky) { described_class.new('Rocky') }

  describe '#name' do
    it 'returns its name' do
      expect(subject.name).to eq 'Rocky'
    end
  end
  describe '#player_choice' do
    let(:player_choice) { double :player_choice }
    it 'chooses rock, paper or scissors' do
      expect(subject.make_choice(player_choice)).to eq player_choice
    end
  end
end
