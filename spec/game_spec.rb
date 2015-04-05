require 'game'
require 'player'

describe Game do

  let(:player) { double :Player, choice: :rock }
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
      game.add(player)
      expect(game.player.choice).to eq (:rock)
    end

    it 'the computer will make a random choice of move' do
      allow(game).to receive(:random_move).and_return(:rock)
      expect(game.random_move).to eq :rock
    end

    it ''

  end

end