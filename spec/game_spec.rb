require 'game'

describe Game do

  subject(:game) { described_class.new(human, computer) }
  let(:human)    { double(:human)  }
  let(:computer) { double(:computer)  }

  describe '#self.create' do
    it 'created a new instance of self' do
      expect(Game.create(human, computer)).to be_an_instance_of described_class
    end
  end

  describe '#self.instance' do
    it 'allows us to access an instance of Player' do
      new_game = Game.create(human, computer)
      expect(Game.instance).to eq new_game
    end
  end

  describe '#players' do
    it 'has player 1' do
      expect(game.player_1).to eq human
    end
    it 'has player 2' do
      expect(game.player_2).to eq computer
    end
  end

  describe '#result' do
    it 'player 1 win' do
      player_1 = double(:player_1, weapon: :rock)
      player_2 = double(:player_2, weapon: :scissor)
      game = described_class.new(player_1, player_2)
      expect(game.result(player_1.weapon, player_2.weapon)).to eq :player_1_win
    end

    it 'player 2 win' do
      player_1 = double(:player_1, weapon: :rock)
      player_2 = double(:player_2, weapon: :paper)
      game = described_class.new(player_1, player_2)
      expect(game.result(player_1.weapon, player_2.weapon)).to eq :player_2_win
    end

    it 'decises a draw' do
      player_1 = double(:player_1, weapon: :scissor)
      player_2 = double(:player_2, weapon: :scissor)
      game = described_class.new(player_1, player_2)
      expect(game.result(player_1.weapon, player_2.weapon)).to eq :draw
    end
  end

end
