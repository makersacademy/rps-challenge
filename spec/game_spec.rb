require 'spec_helper'
require 'game'

describe Game do
  player_1 = Player.new("Dionysis")
  subject(:game) {described_class.new(player_1)}

  describe '#initialize' do
    it 'creates an array that holds the player' do
      expect(game.players).to eq [player_1]
    end

    it 'holds game choices in an array' do
      expect(game.choices).to eq ["Rock","Paper","Scissors"]
    end

    it 'creates a bot to compete against the user' do
      expect(game.bot.name).to eq "bot"
    end
  end

  context "holds player's attributes" do
    it "#first_player_name reads player_1's name " do
      expect(game.first_player_name).to eq "Dionysis"
    end
  end

  describe '#bot_name' do
    it 'read the bot\'s name' do
      expect(game.bot_name).to eq "bot"
    end
  end

  describe "#bot_choice" do
    it "returns a choice at random" do
      expect(["Rock","Paper","Scissors"]).to include game.bot_choice
    end
  end

  describe '#game_result' do
    context 'bot selects Rock' do
      it " and player selects Rock" do
        player_1.player_choice = "Rock"
        game.bot.player_choice = "Rock"
        expect(game.game_result).to eq "It's a draw!!"
      end
      it " and player selects Paper" do
        player_1.player_choice = "Paper"
        game.bot.player_choice = "Rock"
        expect(game.game_result).to eq "You won!!"
      end
      it " and player selects Scissors" do
        player_1.player_choice = "Scissors"
        game.bot.player_choice = "Rock"
        expect(game.game_result).to eq "You lost!!"
      end
    end
    context 'bot selects Paper' do
      it " and player selects Rock" do
        player_1.player_choice = "Rock"
        game.bot.player_choice = "Paper"
        expect(game.game_result).to eq "You lost!!"
      end
      it " and player selects Paper" do
        player_1.player_choice = "Paper"
        game.bot.player_choice = "Paper"
        expect(game.game_result).to eq "It's a draw!!"
      end
      it " and player selects Scissors" do
        player_1.player_choice = "Scissors"
        game.bot.player_choice = "Paper"
        expect(game.game_result).to eq "You won!!"
      end
    end
    context 'bot selects Scissors' do
      it " and player selects Rock" do
        player_1.player_choice = "Rock"
        game.bot.player_choice = "Scissors"
        expect(game.game_result).to eq "You won!!"
      end
      it " and player selects Paper" do
        player_1.player_choice = "Paper"
        game.bot.player_choice = "Scissors"
        expect(game.game_result).to eq "You lost!!"
      end
      it " and player selects Scissors" do
        player_1.player_choice = "Scissors"
        game.bot.player_choice = "Scissors"
        expect(game.game_result).to eq "It's a draw!!"
      end
    end

  end


  # describe '#p_choice' do
  #   it "sets player 1's choice" do
  #     expect(["Rock","Paper","Scissors"]).to include game.p_choice
  #   end
  # end

end
