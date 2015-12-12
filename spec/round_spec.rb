require 'round'

describe Round do
  let(:human) { double :human }
  let(:computer) { double :computer }
  let(:human_klass) { double :human_klass, new: human }
  let(:computer_klass) { double :computer_klass, new: computer }
  let(:session) { {name1: 'J. Bloggs', name2: 'botty', ai?: true } }
  
  subject(:round) { described_class.new(session, human_klass, computer_klass) }

  describe '#initialize' do
    it 'stores the players' do
      expect([round.player1, round.player2]).to eq [human, computer]
    end
  end
end
