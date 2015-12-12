require 'round'

describe Round do
  let(:player) { double :player }
  let(:player_klass) { double :player_klass, new: player }
  let(:session) { {name1: 'AW', name2: 'bot', ai: true, score1: 0, score2: 0 } }
  subject(:round) { described_class.new(session, player_klass) }

  describe '#initialize' do
    it 'stores the players' do
      expect([round.player1, round.player2]).to eq [player, player]
    end
  end
end
