require 'round'

describe Round do
  let(:game) { double :game }
  context 'it can report wins or losses' do
    it 'has a method which can report a win to the game' do
      expect(subject.win!).to eq "Win"
    end
  end
end