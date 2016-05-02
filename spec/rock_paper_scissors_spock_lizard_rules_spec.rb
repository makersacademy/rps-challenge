require 'rock_paper_scissors_spock_lizard_rules'

describe RockPaperScissorsSpockLizardRules do
  subject { described_class.new }

  describe '#moves' do
    it 'returns an array containing rock, paper and scissors' do
      expect(subject.moves).to include(:rock,:paper,:scissors,:spock,:lizard)
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
      context 'player chooses lizard' do
        it 'returns lose' do
          expect(subject.result :lizard, :rock).to eq :lose
        end
      end
      context 'player chooses spock' do
        it 'returns win' do
          expect(subject.result :spock, :rock).to eq :win
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
      context 'player chooses lizard' do
        it 'returns win' do
          expect(subject.result :lizard, :paper).to eq :win
        end
      end
      context 'player chooses spock' do
        it 'returns lose' do
          expect(subject.result :spock, :paper).to eq :lose
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
      context 'player chooses lizard' do
        it 'returns lose' do
          expect(subject.result :lizard, :scissors).to eq :lose
        end
      end
      context 'player chooses spock' do
        it 'returns win' do
          expect(subject.result :spock, :scissors).to eq :win
        end
      end
    end

    context 'opponent chooses spock' do
      context 'player chooses rock' do
        it 'returns win' do
          expect(subject.result :rock, :spock).to eq :lose
        end
      end
      context 'player chooses paper' do
        it 'returns lose' do
          expect(subject.result :paper, :spock).to eq :win
        end
      end
      context 'player chooses scissors' do
        it 'returns win' do
          expect(subject.result :scissors, :spock).to eq :lose
        end
      end
      context 'player chooses lizard' do
        it 'returns draw' do
          expect(subject.result :lizard, :spock).to eq :win
        end
      end
      context 'player chooses spock' do
        it 'returns draw' do
          expect(subject.result :spock, :spock).to eq :draw
        end
      end
    end

    context 'opponent chooses lizard' do
      context 'player chooses rock' do
        it 'returns win' do
          expect(subject.result :rock, :lizard).to eq :win
        end
      end
      context 'player chooses paper' do
        it 'returns lose' do
          expect(subject.result :paper, :lizard).to eq :lose
        end
      end
      context 'player chooses scissors' do
        it 'returns win' do
          expect(subject.result :scissors, :lizard).to eq :win
        end
      end
      context 'player chooses lizard' do
        it 'returns draw' do
          expect(subject.result :lizard, :lizard).to eq :draw
        end
      end
      context 'player chooses spock' do
        it 'returns lose' do
          expect(subject.result :spock, :lizard).to eq :lose
        end
      end
    end
  end
end