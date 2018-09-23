require 'game_mode'

describe GameMode do

  context "Single Player" do

    let(:john) { double :Player }
    let(:jack) { double :Player }
    let(:new_game) { double :New_Game }
    let(:game_class) { double :Game_class, new: new_game }
    subject(:game_mode) { described_class.new(game_class: game_class, player1: john) }

    context "#initialize" do

      it "should start a new Game" do
        expect(game_mode.game).to eq new_game
      end

      it "should insert player1_name into New Game arguments" do
        expect(game_class).to receive(:new).with(john)
        game_mode.game
      end

      it "should not insert player2_name into New Game arguments" do
        expect(game_class).not_to receive(:new).with(john, jack)
        game_mode.game
      end
    end
  end

  context "Multiplayer" do

    let(:john) { double :Player }
    let(:jack) { double :Player }
    let(:new_game) { double :New_Game }
    let(:game_class) { double :Game_class, new: new_game }
    subject(:game_mode) { described_class.new(player_mode: :multiplayer, game_class: game_class, player1: john, player2: jack) }

    context "#initialize" do

      it "should insert player1_name into New Game arguments" do
        expect(game_class).to receive(:new).with(john, jack)
        game_mode.game
      end
    end
  end
end
