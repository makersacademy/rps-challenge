require 'game_mode'

describe GameMode do

  let(:john) { double :Player }
  let(:jack) { double :Player }
  let(:new_game) { double :New_Game, store_move: true, who_won: true }
  let(:game_class) { double :Game_class, new: new_game }

  context "Single Player" do

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

    context "#store_move" do

      it "should delegate storing the move to the Game class" do
        expect(game_mode.store_move(:rock)).to eq true
      end

      it "should delegate storing the move to the Game class" do
        expect(new_game).to receive(:store_move).with(:rock)
        game_mode.store_move(:rock)
      end
    end

    context "#who_won" do
      it "delegates to Game class" do
        expect(game_mode.who_won).to eq true
      end
    end
  end

  context "Multiplayer" do

    subject(:game_mode) { described_class.new(player_mode: :multiplayer, game_class: game_class, player1: john, player2: jack) }

    context "#initialize" do

      it "should insert player1_name into New Game arguments" do
        expect(game_class).to receive(:new).with(john, jack)
        game_mode.game
      end
    end

    context "#store_move" do

      it "should delegate storing the move to the Game class" do
        expect(game_mode.store_move(:rock, :paper)).to eq true
      end

      it "should delegate storing the move to the Game class" do
        expect(new_game).to receive(:store_move).with(:rock, :paper)
        game_mode.store_move(:rock, :paper)
      end
    end
  end
end
