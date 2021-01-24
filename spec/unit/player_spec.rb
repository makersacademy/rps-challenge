require 'player'

describe Player do

  subject { described_class.new(player_name) }
  let(:rock) { "Rock" }
  let(:paper) { "Paper" }
  let(:scissors) { "Scissors" }

  describe '#name' do
    it 'returns name player was created with' do
      expect(subject.name).to eq player_name
    end
  end

  describe '#choice' do
    context 'when player first created' do
      it 'is nil' do
        expect(subject.choice).to be nil
      end
    end
  end

  describe '#pick_specified' do
    it 'Sets choice to the input' do
      expect { subject.pick_specified(rock) }.to change { subject.choice }.to rock
    end
  end

  describe '#pick_random' do
    let(:options) { [paper, rock, scissors] }
    it 'Sets choice to one of rock, paper or scissors' do
      subject.pick_random
      expect(options).to include subject.choice
    end
    context 'when run many times' do
      it 'returns rock, paper and scissors but nothing else' do
        results = []
        100_000.times do
          subject.pick_random
          results |= [subject.choice]
        end
        expect(results.sort).to eq options
      end
    end
  end

end
