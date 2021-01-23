require 'player'

describe Player do

  subject { described_class.new(player_name) }

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
    let(:choice) { "Rock" }
    it 'Sets choice to the input' do
      expect { subject.pick_specified(choice) }.to change { subject.choice }.to choice
    end
  end

  describe '#pick_random' do
    let(:options) { ["Rock", "Paper", "Scissors"] }
    it 'returns one of rock, paper or scissors' do
      expect(options).to include subject.pick_random
    end
  end
  
end
