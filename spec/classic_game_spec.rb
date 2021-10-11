require 'classic_game'

describe ClassicGame do
  let(:player_one) { double(:player) }
  let(:player_two) { double(:player) }
  let(:game) { described_class.new(player_one, player_two) }

  describe '#player' do
    it "has one player" do
      expect(game.player).to eq player_one
    end
  end

  describe '#move' do
    it "accepts a valid move" do
      expect { game.move("Rock") }.not_to raise_error
    end

    it "throws an error with an invalid move" do
      expect { game.move("invalid") }.to raise_error "invalid move"
    end
  end

  describe '#ai move' do
    it "generates rock" do
      allow(game).to receive(:random_number).and_return 1
      expect(game.ai_move).to eq "Rock"
    end

    it "generates paper" do
      allow(game).to receive(:random_number).and_return 2
      expect(game.ai_move).to eq "Paper"
    end

    it "generates scissors" do
      allow(game).to receive(:random_number).and_return 3
      expect(game.ai_move).to eq "Scissors"
    end
  end

  describe '#result' do
    it "fails if no input" do
      expect { game.result }.to raise_error "turns not completed"
    end

    let(:win) { "You win!" }
    let(:lose) { "I win!" }
    let(:draw) { "It's a draw!" }
  
    describe '.wins' do
      it "returns win if PvR" do
        allow(game).to receive(:random_number).and_return 1

        game.move("Paper")
        game.ai_move
        expect(game.result).to eq win
      end

      it "returns win if RvS" do
        allow(game).to receive(:random_number).and_return 3

        game.move("Rock")
        game.ai_move
        expect(game.result).to eq win
      end

      it "returns win if SvP" do
        allow(game).to receive(:random_number).and_return 2

        game.move("Scissors")
        game.ai_move
        expect(game.result).to eq win
      end
    end 

    describe '.losses' do
      it "returns lose if PvS" do
        allow(game).to receive(:random_number).and_return 3

        game.move("Paper")
        game.ai_move
        expect(game.result).to eq lose
      end

      it "returns lose if RvP" do
        allow(game).to receive(:random_number).and_return 2

        game.move("Rock")
        game.ai_move
        expect(game.result).to eq lose
      end

      it "returns lose if SvR" do
        allow(game).to receive(:random_number).and_return 1

        game.move("Scissors")
        game.ai_move
        expect(game.result).to eq lose
      end
    end 

    describe '.draws' do
      it "returns lose if PvP" do
        allow(game).to receive(:random_number).and_return 2

        game.move("Paper")
        game.ai_move
        expect(game.result).to eq draw
      end

      it "returns lose if RvR" do
        allow(game).to receive(:random_number).and_return 1

        game.move("Rock")
        game.ai_move
        expect(game.result).to eq draw
      end

      it "returns lose if SvS" do
        allow(game).to receive(:random_number).and_return 3

        game.move("Scissors")
        game.ai_move
        expect(game.result).to eq draw
      end
    end 
  end
end
