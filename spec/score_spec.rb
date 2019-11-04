require 'score'
require 'player'
describe Score do
  subject(:score_1) { described_class.new(player_1, player_2) }
  let(:player_1) { Player.new('player_1') }
  let(:player_2) { Player.new('player_2') }
  context 'only changes as required ' do
    it 'increases player_1 when passed 1' do
      expect { score_1.increment(1) }.to change { player_1.player_score }.by(1)
    end
    it 'does not change player_2 when passed 1' do
      expect { score_1.increment(1) }.to_not(change { player_2.player_score })
    end
    it 'increases player_2 when passed 2' do
      expect { score_1.increment(2) }.to change { player_2.player_score }.by(1)
    end
    it 'does not change player_1 when passed 2' do
      expect { score_1.increment(2) }.to_not(change { player_1.player_score })
    end
  end
end
