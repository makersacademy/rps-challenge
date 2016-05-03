require 'game'

describe Game do

  subject(:game) {described_class.new(player_1, p1_win_score)}
  let(:player_1) { double :player_1 }
  let(:p1_win_score) { double :score, total: 3, comp_total: 2, add: nil, comp_add:nil }

  it { is_expected.to respond_to(:attack_with).with(1).argument }



  context '#computer_attack' do
    it 'chooses a random attack' do
      allow(game.attacks).to receive(:sample).and_return("ROCK")
      game.computer_attack
      expect(game.chosen_attacks[:p2]).to eq "ROCK"
    end

    it 'has an attack for rock, paper, scissors, spock and lizard' do
      expect(game.attacks).to include (Game::R&&Game::S&&Game::P&&Game::L&&Game::SP)
    end
  end

  context '#attack_with' do
    it 'returns attack value passed in upper case' do
      game.attack_with "paper"
      expect(game.chosen_attacks[:p1]).to eq "PAPER"
    end

    it 'sets player\'s attack to value passed in' do
      game.attack_with "LIZARD"
      expect(game.chosen_attacks[:p1]).to eq "LIZARD"
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

    it 'player 1 wins if they choose LIZARD' do
      game.attack_with("LIZARD")
      game.computer_attack
      expect(game.result).to eq game.player
    end

    it 'computer wins if Player 1 chooses SPOCK' do
      game.attack_with("SPOCK")
      game.computer_attack
      expect(game.result).to eq "COMPUTER"
    end

    it 'returns "DRAW" in the event of a draw' do
      game.attack_with("PAPER")
      game.computer_attack
      expect(game.result).to eq "DRAW"
    end

  end

  it 'game can check the player score' do
    expect(game.score).to be_truthy
  end

  context 'calculates the winner based on best of 5' do

    it { is_expected.to respond_to(:winner)}

    it 'player wins overall if 3 games won in total' do
      3.times do
        game.attack_with("SCISSORS")
        game.computer_attack
      end
      expect(game.winner).to eq game.player
    end

  end

end