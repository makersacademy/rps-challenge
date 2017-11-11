require 'game'

describe Game do

  let(:multiplayer_game) { described_class.new(['Allan', 'Timothy']) }
  subject(:game) { described_class.new(['Allan']) }

  context 'winning, losing and tying!' do
    before(:each) do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    end
    describe '#play' do
      it 'says you won when you play rock against scissors' do
        expect(subject.play(['rock'])).to eq "Your rock crushed computer's scissors!"
      end
      it 'says you lost when you play paper against scissors' do
        expect(subject.play(['paper'])).to eq "Your paper was cut by computer's scissors!"
      end
      it 'says you won when you play scissors against scissors' do
        expect(subject.play(['scissors'])).to eq "Your scissors clashed with computer's scissors!"
      end
      it 'says you lost when you play lizard against scissors' do
        expect(subject.play(['lizard'])).to eq "Your lizard was decapitated by computer's scissors!"
      end
      it 'says you won when you play rock against spock' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:spock)
        expect(subject.play(['rock'])).to eq "Your rock was vaporised by computer's spock!"
      end
      it 'says you won when you play scissors against lizard' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:lizard)
        expect(subject.play(['scissors'])).to eq "Your scissors decapitated computer's lizard!"
      end
    end
  end

  context 'reseting the score' do
    describe '#reset' do
      it 'resets the score to zero after 6 wins' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:lizard)
        6.times { subject.play(['scissors']) }
        subject.reset
        expect(subject.wins).to eq 0
      end
    end
  end

  context 'multiplayer gaming' do
   describe '#player' do
     it "when Allan plays rock against Timothy's scissors, Allan receives confirmation of winning" do
       expect(multiplayer_game.play(['rock', 'scissors'])).to eq "Allan's rock crushed Timothy's scissors!"
     end
   end
  end

end
