require 'user'

describe Game do

  let(:game) { Game.new("paper", ["paper", "paper"]) }

  describe '#set' do
    it "creates a new game with choices from user and computer" do
      expect(game.user).to eq "paper"
      expect(game.computer).to eq "paper"
    end
  end

end
