require 'game'

describe Game do
  it 'is initialized with a name by default' do
    expect(subject.name).to eq "Player 1"
  end

  describe '#play' do
    def computer_chooses(weapon)
      allow(subject).to receive(:random_weapon).and_return weapon
    end

    it 'returns :win, :loss or :draw' do
      possible_outcomes = [:win, :loss, :draw]
      expect(possible_outcomes).to include subject.play :rock
    end

    it 'returns :draw when player weapon and opponent weapon are the same' do
      computer_chooses :rock
      expect(subject.play :rock).to eq :draw
    end

    context 'when player chooses :rock' do
      it 'returns :win when computer chooses :scissors' do
        computer_chooses :scissors
        expect(subject.play :rock).to eq :win
      end

      it 'returns :loss when computer chooses :paper' do
        computer_chooses :paper
        expect(subject.play :rock).to eq :loss
      end
    end

    context 'when player chooses :paper' do
      it 'returns :win when computer chooses :rock' do
        computer_chooses :rock
        expect(subject.play :paper).to eq :win
      end

      it 'returns :loss when computer chooses :scissors' do
        computer_chooses :scissors
        expect(subject.play :paper).to eq :loss
      end
    end

    context 'when player chooses :scissors' do
      it 'returns :win when computer chooses :paper' do
        computer_chooses :paper
        expect(subject.play :scissors).to eq :win
      end

      it 'returns :loss when computer chooses :rock' do
        computer_chooses :rock
        expect(subject.play :scissors).to eq :loss
      end
    end

  end

end