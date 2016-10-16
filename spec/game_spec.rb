require 'game'

describe Game do
  let (:player_1) {Player.new("Anna")}
  subject(:game) {described_class.new(player_1)}

  describe 'accepts one player' do
    it 'returns player\'s name' do
      expect(game.player_1_name).to eq("Anna")
    end
  end

  describe 'player one picks rock, paper or scissors' do
    it 'doesn\'t pick rock, paper or scissors' do
      expect{game.player_1_choice("lizard")}.to raise_error("Oops, that doesn't exist! Please choose rock, paper or scissors.")
    end

    it 'player picks rock' do
      expect(game.player_1_choice("rock")).to eq("rock")
    end

    it 'player picks paper' do
      expect(game.player_1_choice("paper")).to eq("paper")
    end

    it 'player picks scissors' do
    expect(game.player_1_choice("scissors")).to eq("scissors")
    end
  end
end
