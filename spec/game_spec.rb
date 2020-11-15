require 'game'
require 'player'
require 'human'
require 'computer'

describe Game do

  let(:game) { Game.new }
  let(:savanna) { double 'human', move: 'rock' }
  let(:alexa) { double 'computer', move: 'paper'}
  let(:human_player) { double 'human' }
  let(:bot_player) { double 'computer' }

  describe '#initialize' do
    it 'creates 2 instances of the Player class on instantiation' do
      expect(game.human_player).to be_a Human
      expect(game.bot_player).to be_a Computer
    end
  end

  describe '#game_over?' do
    it 'lets us know if the game is over - i.e if there is no tie' do
      game.human_player.move == game.bot_player.move
      expect(game.game_over?).to eq false
    end
  end

  describe '#play' do
    it 'lets the two players pick rock, paper or scissors' do
      expect{ game.play('paper') }.to change{ game.human_player.move }.from(nil).to('paper')
    end
  end

  #describe '#who_won' do
    #it 'determines the winner' do
      #expect(game.who_won).to eq 'The computer won!'
    #end
  #end

  describe "#self.create" do
    it "instantiates a new game and returns it with #instance" do
      Game.create(human_player, bot_player)
      expect(Game.instance).to be_an_instance_of(Game)
    end
  end


end
