require 'game'

describe Game do

  subject(:game) {described_class.new(player_1)}
  let(:player_1) {double :player_1}

  it { is_expected.to respond_to(:attack_with).with(1).argument }



  context '#computer_attack' do
    it 'chooses a random attack' do
      allow(game.attacks).to receive(:sample).and_return("ROCK")
      game.computer_attack
      expect(game.chosen_attacks[:p2]).to eq "ROCK"
    end
  end

  context '#attack_with' do
    it 'returns attack value passed in upper case' do
      game.attack_with "paper"
      expect(game.chosen_attacks[:p1]).to eq "PAPER"
    end
  end

  context '#result' do

    before do
      allow(game.attacks).to receive(:sample).and_return("PAPER")
    end

    it 'determines who has won a game' do
      game.attack_with("SCISSORS")
      game.computer_attack
      expect(game.result).to eq game.player
    end

    it 'returns "DRAW" in the event of a draw' do
      game.attack_with("PAPER")
      game.computer_attack
      expect(game.result).to eq "DRAW"
    end

  end

end