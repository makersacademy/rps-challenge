require 'rock_paper_scissors_rules'

describe RockPaperScissorsRules do
  subject { described_class.new }

  describe '#moves' do
    it 'returns an array containing rock, paper and scissors' do
      expect(subject.moves).to include(:rock, :paper, :scissors)
    end
  end

  describe '#result' do
    context 'opponent chooses rock' do
      context 'player chooses rock' do
        it 'returns draw' do
          expect(subject.result :rock, :rock).to eq :draw
        end
      end
      context 'player chooses paper' do
        it 'returns win' do
          expect(subject.result :paper, :rock).to eq :win
        end
      end
      context 'player chooses scissors' do
        it 'returns lose' do
          expect(subject.result :scissors, :rock).to eq :lose
        end
      end
    end

    context 'opponent chooses paper' do
      context 'player chooses rock' do
        it 'returns lose' do
          expect(subject.result :rock, :paper).to eq :lose
        end
      end
      context 'player chooses paper' do
        it 'returns draw' do
          expect(subject.result :paper, :paper).to eq :draw
        end
      end
      context 'player chooses scissors' do
        it 'returns win' do
          expect(subject.result :scissors, :paper).to eq :win
        end
      end
    end

    context 'opponent chooses scissors' do
      context 'player chooses rock' do
        it 'returns win' do
          expect(subject.result :rock, :scissors).to eq :win
        end
      end
      context 'player chooses paper' do
        it 'returns lose' do
          expect(subject.result :paper, :scissors).to eq :lose
        end
      end
      context 'player chooses scissors' do
        it 'returns draw' do
          expect(subject.result :scissors, :scissors).to eq :draw
        end
      end
    end
  end
end