require 'game'

describe Game do
  let(:player_1) { double :player, weapon: :rock }
  let(:player_2) { double :player, weapon: :paper, weapon_choice: true }

  let(:rules) { double :rules, defeats?: true, reason_finder: "paper covers rock" }
  let(:rules_class) { double :rules_class, new: rules }

  let(:computer_class) { double :computer_class }

  subject(:game) { described_class.new(player_1, player_2, rules_class, computer_class ) }

  describe '#result' do
    it 'the winner will be player 2 when p2_wins returns true' do
      game.result
      expect(game.winner).to eq player_2
    end
  end

  describe '#reason' do
    it 'the reason will be paper covers rock when players choose these' do
      game.result
      expect(game.reason).to eq "paper covers rock"
    end
  end

  describe '#computers_move' do
    it 'returns /result if player 2 is a computer' do
      allow(player_2).to receive(:is_a?).with(computer_class) { true }
      stub_const("Rules::MOVE", { rock: :scissors })
      expect(game.computers_move).to eq '/result'
    end
  end
end
