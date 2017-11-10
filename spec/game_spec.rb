require 'game'

describe Game do
  
  subject(:game) { described_class.new }

  context 'winning, losing and tying!' do
    before(:each) do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    end
    describe '#play' do
      it 'says you won when you play rock against scissors' do
        expect(subject.play('rock')).to eq "You won!"
      end
      it 'says you lost when you play paper against scissors' do
        expect(subject.play('paper')).to eq "You lost!"
      end
      it 'says you won when you play scissors against scissors' do
        expect(subject.play('scissors')).to eq "You tied!"
      end
    end
  end

end