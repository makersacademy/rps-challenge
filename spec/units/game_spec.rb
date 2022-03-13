require 'game.rb'

describe Game do

  let(:adam) { Player.new("Adam") }
  
  before do
    @game = Game.new(:adam, :cpu_double_paper)
  end

  context 'setup' do

    it 'should accept a player when initialised' do
      expect{@game}.to_not raise_error
    end

    it 'should return a player once initialised' do
      expect(@game.player1).to eq :adam
    end

  end

  context 'mechanics' do

    let(:cpu_paper) { double(:cpu_paper, :name => "CPU", :move => "paper") }
    let(:cpu_rock) { double(:cpu_rock, :name => "CPU", :move => "rock") }
    let(:adam_scissors) { double(:adam_scissors, :name => "Adam", :move => "scissors") }
    let(:adam_rock) { double(:adam_rock, :name => "Adam", :move => "rock") }

    it 'should return player 1 if player 1 wins' do
      stubbed_game = Game.new(adam_scissors, cpu_paper)
      expect(stubbed_game.winner).to eq "Adam"
    end

    it 'should return player 2 if player 2 wins' do
      stubbed_game = Game.new(adam_rock, cpu_paper)
      expect(stubbed_game.winner).to eq "CPU"
    end

    it 'should return draw if the players draw' do
      stubbed_game = Game.new(adam_rock, cpu_rock)
      expect(stubbed_game.winner).to eq "Draw"
    end

  end

end