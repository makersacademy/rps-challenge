require 'game'

describe Game do
  subject(:game) { described_class.new(players_card, random_card) }
  let(:players_card) { double(idx: 1) }
  let(:random_card) { double(idx: 1) }

  it 'instantiates the game' do
    expect(game).to be_instance_of Game
  end

  describe '#play' do
    it 'calculates game outcome for :win' do
      players_card_win = Card.new(2)
      new_game = Game.create(players_card_win, random_card)
      expect(new_game).to eq :win
    end

    it 'calculates game outcome for :lose' do
      players_card_lose = Card.new(0)
      new_game = Game.create(players_card_lose, random_card)
      expect(new_game).to eq :lose
    end

    it 'calculates game outcome for :draw' do
      players_card_draw = Card.new(1)
      new_game = Game.create(players_card_draw, random_card)
      expect(new_game).to eq :draw
    end
  end

end
