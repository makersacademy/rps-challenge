require 'game'

describe Game do
  subject(:game) {described_class.new(player_1, player_2)}
  let(:player_1) { double(:player, name: 'player 1')}
  let(:player_2) {double :player_2}

  context 'setting up the game' do

    it 'initializes with a player injected' do
      expect(game.player_1).to eq player_1
    end

    it 'initializes with a second player injected' do
      expect(game.player_2).to eq player_2
    end

    it 'initializes with winner as nil' do
      expect(game.winner).to eq nil
    end

  end

  context 'calculates results using the result method' do

    it 'decides winner using results method' do
      game.result(:Rock, :Scissors)
      expect(game.winner).to eq 'player 1'
    end

    it 'returns winner as :Draw if the game is a draw' do
      game.result(:Rock, :Rock)
      expect(game.winner).to eq :Draw
    end

  end

  context 'has the correct win outcome for every combination' do

    it 'results in Rock winning against Scissors' do
      game.result(:Rock, :Scissors)
      expect(game.winner).to eq 'player 1'
    end

    it 'results in Rock winning against Lizard' do
      game.result(:Rock, :Lizard)
      expect(game.winner).to eq 'player 1'
    end

    it 'results in Paper winning against Rock' do
      game.result(:Paper, :Rock)
      expect(game.winner).to eq 'player 1'
    end

    it 'results in Paper winning against Spock' do
      game.result(:Paper, :Spock)
      expect(game.winner).to eq 'player 1'
    end

    it 'results in Scissors winning against Paper' do
      game.result(:Scissors, :Paper)
      expect(game.winner).to eq 'player 1'
    end

    it 'results in Scissors winning against Lizard' do
      game.result(:Scissors, :Lizard)
      expect(game.winner).to eq 'player 1'
    end

    it 'results in Lizard winning against Paper' do
      game.result(:Lizard, :Paper)
      expect(game.winner).to eq 'player 1'
    end

    it 'results in Lizard winning against Spock' do
      game.result(:Lizard, :Spock)
      expect(game.winner).to eq 'player 1'
    end

    it 'results in Spock winning against Rock' do
      game.result(:Spock, :Rock)
      expect(game.winner).to eq 'player 1'
    end

    it 'results in Spock winning against Scissors' do
      game.result(:Spock, :Scissors)
      expect(game.winner).to eq 'player 1'

    end

  end

  context 'has the correct draw outcome for every combination' do

    it 'results in Rock drawing against Rock' do
      game.result(:Rock, :Rock)
      expect(game.winner).to eq :Draw

    end
    it 'results in Paper drawing against Paper' do
      game.result(:Paper, :Paper)
      expect(game.winner).to eq :Draw

    end

    it 'results in Scissors drawing against Scissors' do
      game.result(:Scissors, :Scissors)
      expect(game.winner).to eq :Draw

    end

    it 'results in Lizard drawing against Lizard' do
      game.result(:Lizard, :Lizard)
      expect(game.winner).to eq :Draw

    end

    it 'results in Spock drawing against Spock' do
      game.result(:Spock, :Spock)
      expect(game.winner).to eq :Draw

    end

  end

end
