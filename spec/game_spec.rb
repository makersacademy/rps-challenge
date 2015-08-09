require 'game'

describe Game do
  it 'is initialized with a name by default' do
    expect(subject.name).to eq "Player 1"
  end

  describe '#play' do
    it 'returns :win or :loss' do
      possible_outcomes = [:win, :loss, :draw]
      expect(possible_outcomes).to include subject.play :rock
    end

    context 'when player chooses :rock' do
      it 'returns :win when computer chooses :scissors' do
        allow(subject).to receive(:random_weapon).and_return :scissors
        expect(subject.play :rock).to eq :win
      end

      it 'returns :loss when computer chooses :paper' do
        allow(subject).to receive(:random_weapon).and_return :paper
        expect(subject.play :rock).to eq :loss
      end

      it 'returns :draw when computer chooses :rock' do
        allow(subject).to receive(:random_weapon).and_return :rock
        expect(subject.play :rock).to eq :draw
      end
    end

    context 'when player chooses :paper' do
      it 'returns :win when computer chooses :rock' do
        allow(subject).to receive(:random_weapon).and_return :rock
        expect(subject.play :paper).to eq :win
      end

      it 'returns :loss when computer chooses :scissors' do
        allow(subject).to receive(:random_weapon).and_return :scissors
        expect(subject.play :paper).to eq :loss
      end
      
      it 'returns :draw when computer chooses :paper' do
        allow(subject).to receive(:random_weapon).and_return :paper
        expect(subject.play :paper).to eq :draw
      end
    end

    context 'when player chooses :scissors' do
      it 'returns :win when computer chooses :paper' do
        allow(subject).to receive(:random_weapon).and_return :paper
        expect(subject.play :scissors).to eq :win
      end

      it 'returns :loss when computer chooses :rock' do
        allow(subject).to receive(:random_weapon).and_return :rock
        expect(subject.play :scissors).to eq :loss
      end

      it 'returns :draw when computer chooses :scissors' do
        allow(subject).to receive(:random_weapon).and_return :scissors
        expect(subject.play :scissors).to eq :draw
      end
    end
    
  end

end