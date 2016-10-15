require 'game'

describe Game do
  player_1 = Player.new("Dionysis")
  subject(:game) {described_class.new(player_1)}

  describe '#initialize' do
    it 'creates an array that holds the player' do
      expect(game.players).to eq [player_1]
    end

    it 'holds game choices in an array' do
      expect(game.choices).to eq ["rock","paper","scissors"]
    end

    it 'creates a bot to compete against the user' do
      expect(game.bot.name).to eq "bot"
    end
  end

  context "holds player's attributes" do
    it "reads player_1's name " do
      expect(game.first_player_name).to eq "Dionysis"
    end
  end

end
