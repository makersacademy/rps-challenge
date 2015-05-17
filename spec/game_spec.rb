require 'game'

describe Game do

  context 'Play a game' do

    let(:game) { Game.new Player }

    it 'Will create two players upon creation' do
      expect(game.player_1).to be_kind_of(Player)
      expect(game.player_2).to be_kind_of(Player)
    end

    it 'Will set a default win goal of one' do
      expect(game.goal).to eq 1
    end

    it 'Will set a specified win goal of five' do
      game.goal=5
      expect(game.goal).to eq 5
    end

    it 'Will be set to traditional rules be default' do
      expect(game.rules).to eq 'rps'
    end

    it 'Can have rules set to include lizard, Spock' do
      game.rules='rpsls'
      expect(game.rules).to eq 'rpsls'
    end

    it 'Can define reason for lizard beating paper' do
      expect(game.reason 'lizard', 'paper').to eq 'Lizard eats paper'
    end

    it 'Can define reason for rock beating lizard' do
      expect(game.reason 'rock', 'lizard').to eq 'Rock crushes lizard'
    end

    it 'Can define reason for scissors beating lizard' do
      expect(game.reason 'scissors', 'lizard').to eq 'Scissors decapitate lizard'
    end

    it 'Can define reason for lizard beating Spock' do
      expect(game.reason 'lizard', 'Spock').to eq 'Lizard poisons Spock'
    end

    it 'Can define reason for paper beating rock' do
      expect(game.reason 'paper', 'rock').to eq 'Paper covers rock'
    end

    it 'Can define reason for scissors beating paper' do
      expect(game.reason 'scissors', 'paper').to eq 'Scissors cut paper'
    end

    it 'Can define reason for paper beating Spock' do
      expect(game.reason 'paper', 'Spock').to eq 'Paper disproves Spock'
    end

    it 'Can define reason for rock beating scissors' do
      expect(game.reason 'rock', 'scissors').to eq 'Rock crushes scissors'
    end

    it 'Can define reason for Spock beating rock' do
      expect(game.reason 'Spock', 'rock').to eq 'Spock vaporizes rock'
    end

    it 'Can define reason for Spock beating scissors' do
      expect(game.reason 'Spock', 'scissors').to eq 'Spock smashes scissors'
    end

  end

end