require 'game'

describe Game do

  describe "#rock" do
    it 'allows player to choose rock' do
      expect(game.player.choice).to eq("Rock")
    end
  end

  describe "#paper" do
    it 'allows player to choose paper' do
      expect(game.player.choice).to eq("Paper")
    end
  end

  describe "#scissors" do
    it 'allows player to choose scissors' do
      expect(game.player.choice).to eq("Scissors")
    end
  end

end
