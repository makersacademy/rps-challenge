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
      game.set_goal(5)
      expect(game.goal).to eq 5
    end

    it 'Will be set to traditional rules be default' do
      expect(game.rules).to eq 'rps'
    end

    it 'Can have rules set to include lizard, Spock' do
      game.rules='rpsls'
      expect(game.rules).to eq 'rpsls'
    end

  end

end