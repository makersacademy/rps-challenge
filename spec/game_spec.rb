require 'game'

describe Game do
  let(:player) {"rock"}
  let(:computer) {"rock"}
  subject(:game) {described_class.new(player, computer)}

  it 'can return the player\'s choice' do
    expect(game.player).to eq player
  end

  it 'can return the computer\'s choice' do
    expect(game.computer).to eq computer
  end

context 'does logic' do
    it 'returns draw when it\'s a draw' do
      expect(game.result).to eq :draw
    end

    it 'returns win when it\'s a win' do
      player_wins = "scissors"
      game_win = described_class.new(player, player_wins)
      expect(game_win.result).to eq :win
    end

    it 'returns true when a player has lost' do
      computer_wins = "paper"
      game_lose = described_class.new(player, computer_wins)
      expect(game_lose.result).to eq :lose
    end
  end

  it 'returns the right verb' do
    player_paper = "paper"
    computer_rock = "rock"
    game_verb = described_class.new(player_paper,computer_rock)
    expect(game_verb.verb).to eq "covers"
  end

  context 'accounts for lizard and spock' do
    it 'lizard loses against scissors' do
      computer_scissors = "scissors"
      player_lizard = "lizard"
      game_2 = described_class.new(player_lizard, computer_scissors)
      expect(game_2.result).to eq :lose
    end

    it 'returns right verbs' do
      player_lizard = "lizard"
      game_3 = described_class.new(player_lizard, computer)
      expect(game_3.verb).to eq "crushes"
    end

    it 'Spock wins against rock' do
      player_spock = "Spock"
      game_4 = described_class.new(player_spock, computer)
      expect(game_4.result).to eq :win
    end
  end

end
