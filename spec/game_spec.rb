require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double :player1, name: 'Iryna', player_choice: :scissors }
  let(:player2) { double :player2, name: 'Dave', player_choice: :rock }
  let(:player3) { double :player3, name: 'Harry', player_choice: :paper }

  describe "Game Rules" do
    it "have to be provided at the begining for all players" do
      expect(game.rules).to eq described_class::DEFAULT_RULES
    end

    it "could be provided more advanced rules for the game" do
      rules = {rock: [:scissors]}
      game = Game.new(rules)
      expect(game.rules).to eq rules
    end
  end

  describe "#add_player" do

    before do
      game.add_player(player1)
      game.add_player(player2)
    end

    it "adds players to the game" do
      expect(game.players).to include(player1,player2)
    end

    it "#player1 return first player" do
      expect(game.player1).to eq player1
    end

    it "#player1 return first player" do
      expect(game.player2).to eq player2
    end
  end


  describe "#provide_options" do
    it "could be provided more advanced options for player" do
      rules = {rock: [:scissors], scissors: [:paper]}
      game = Game.new(rules)
      game.provide_options
      expect(game.options).to eq([:rock, :scissors])
    end
  end

  describe "#decide_result" do
    before { game.add_player(player1) }
    it "return result of the game => player2 won" do
      game.add_player(player2)
      result = 'Dave WON, Iryna LOST'
      expect{game.decide_result}.to change{game.result}.to(result)
    end

    it "result of the game =>  player1 won" do
      game.add_player(player3)
      result = 'Iryna WON, Harry LOST'
      expect{game.decide_result}.to change{game.result}.to(result)
    end

    it "return DRAW if both players have the same choice" do
      game.add_player(player1)
      result = 'Result of the game is DRAW'
      expect{game.decide_result}.to change{game.result}.to(result)
    end

  end


end
