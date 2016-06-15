require 'game'

describe Game do
  subject(:game) { described_class.new(player, random_card) }
  let(:player) { double(:player, name: "Meerkat") }
  let(:random_card) { double(index: "2", id: "paper") }
  let(:players_card_win) { double(index: "3", id: "scissors")}
  let(:players_card_lose) { double(index: "1", id: "rock")}
  let(:players_card_draw) { double(index: "2", id: "paper")}

  it 'game starts once player submits their name' do
    new_player= Player.new("Meerkat")
    new_card= Card.new("2")
    new_game= Game.new(new_player, new_card)
    expect(game.player.name).to eq new_game.player.name
  end

  describe '#fight_against' do
    it { is_expected.to respond_to(:fight_against).with(1).argument }

    it 'calculates game outcome for :win' do
      expect(game.fight_against(players_card_win)).to eq :win
    end
    
    it 'calculates game outcome for :lose' do
      expect(game.fight_against(players_card_lose)).to eq :lose
    end

    it 'calculates game outcome for :draw' do
      expect(game.fight_against(players_card_draw)).to eq :draw
    end
  end
 
end