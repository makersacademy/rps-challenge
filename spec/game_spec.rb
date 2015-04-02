require 'game'
require 'player'

describe Game do

  let(:player) { double :Player, name: "Phoebe" }
  let(:game) { Game.new }

  context "setting up" do

    it 'can have a player added' do
      game.add(player)
      expect(game.player).to eq player
    end

    it 'should know when its ready to start' do
      game.add(player)
      expect(game).to be_ready
    end

  end

  context "playing the game" do

    it 'lets a player see choices for rock, paper or scissors' do
      expect(game.choices).to eq [:rock, :paper, :scissors]
    end

    it 'a player can choose a move' do
      allow(player).to receive(:choose_move)
    end

    it 'the computer can chooise a move' do
    end

  end

end