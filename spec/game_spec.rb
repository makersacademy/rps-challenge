require 'game'

describe Game do
  
  subject(:game) { described_class.new }

  context 'winning, losing and tying!' do
    before(:each) do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    end
    describe '#play' do
      it 'says you won when you play rock against scissors' do
        expect(subject.play('rock')).to eq "Your rock crushed computer's scissors!"
      end
      it 'says you lost when you play paper against scissors' do
        expect(subject.play('paper')).to eq "Your paper was cut by computer's scissors!"
      end
      it 'says you won when you play scissors against scissors' do
        expect(subject.play('scissors')).to eq "Your scissors clashed with computer's scissors!"
      end
      it 'says you lost when you play lizard against scissors' do
        expect(subject.play('lizard')).to eq "Your lizard was decapitated by computer's scissors!"
      end
      it 'says you won when you play rock against spock' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:spock)
        expect(subject.play('rock')).to eq "Your rock was vaporised by computer's spock!"
      end
      it 'says you won when you play scissors against lizard' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:lizard)
        expect(subject.play('scissors')).to eq "Your scissors decapitated computer's lizard!"
      end
    end
  end

end
