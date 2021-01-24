require 'game'

describe Game do

  let(:player_1) { Player.new(player_name) }
  let(:player_2) { Player.new("Computer") }
  subject(:game) { described_class.new(player_1, player_2) }

  describe '#play' do
    subject { game.play("Rock") }
    it 'changes player 1 choice' do
      expect { subject }.to change{ player_1.choice }
    end
    # it { is_expected.to change { player_2.choice } }
    # it {}
  end


end
