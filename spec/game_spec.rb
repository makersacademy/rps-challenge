require 'game'

describe Game do

  let(:rock_player) { double(:player, weapon: :rock ) }
  let(:paper_player) { double(:player, weapon: :paper) }
  let(:scissors_player) { double(:player, weapon: :scissors) }
  let(:rock_computer) { double(:computer, weapon: :rock) }
  subject(:win_game) { described_class.new(paper_player, rock_computer)}
  subject(:lose_game) { described_class.new(scissors_player, rock_computer) }
  subject(:draw_game) { described_class.new(rock_player, rock_computer) }

  describe '#initialize' do
    it 'has a player 1' do
      expect(win_game.player_1).to eq paper_player
    end

    it 'has a player 2' do
      expect(win_game.player_2).to eq rock_computer
    end
  end

  describe '#create' do
      it 'creates a new instance of game within the class' do
        Game.create(paper_player)
        expect(Game.instance).to be_a Game
      end
  end

  describe '#result' do
    it 'returns win if the player wins' do
      expect(win_game.result).to eq :win
    end
    it 'returns drew if the players draw' do
      expect(draw_game.result).to eq :drew
    end
    it 'returns lose if the player loses' do
      expect(lose_game.result).to eq :lose
    end
  end

end
