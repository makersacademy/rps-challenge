require 'game_mode'

describe GameMode do

  let(:john) { double :Player }
  let(:jack) { double :Player }
  let(:new_game_instance) { double :New_Game_Instance, store_move: true, who_won: true }
  let(:game_class) { double :Game_class, new: new_game_instance }

  context "Single Player" do

    subject(:game_mode) { described_class.new }

    context "#initialize" do

      it "should set the player mode to single player" do
        expect(game_mode.player_mode).to eq :single_player
      end
    end

    context "#new_game" do

      it "should start a new Game" do
        expect(game_mode.new_game(game_class: game_class)).to eq new_game_instance
      end

      it "should insert player1_name into New Game arguments" do
        expect(game_class).to receive(:new).with(john)
        game_mode.new_game(player1: john, game_class: game_class)
      end

      it "should not insert player2_name into New Game arguments" do
        expect(game_class).not_to receive(:new).with(john, jack)
        game_mode.new_game(player1: john, player2: jack, game_class: game_class)
      end
    end
  end

  context "Multiplayer" do

    subject(:game_mode) { described_class.new(player_mode: :multiplayer) }

    context "#initialize" do

      it "should set the player mode to multiplayer" do
        expect(game_mode.player_mode).to eq :multiplayer
      end
    end

    context "#new_game" do

      it "should insert player1_name into New Game arguments" do
        expect(game_class).to receive(:new).with(john, jack)
        game_mode.new_game(player1: john, player2: jack, game_class: game_class)
      end
    end
  end
end
