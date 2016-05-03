require 'game'

describe Game do

  subject(:game) { described_class.new(player_klass: player_class, player_name: player1_name) }
  let(:player_class) { double(:player_class, new: player1) }
  let(:player1) { double(:player1, name: player1_name) }
  let(:player1_name ) { "Bob" }

  describe '#create' do
    it 'creates a game instance' do
      expect(Game).to receive(:new)
      Game.create(player_klass: player_class, player_name: player1_name)
    end
  end

  describe '#current_game' do
    it 'returns instance of current game' do
      game = Game.create(player_klass: player_class, player_name: player1_name)
      expect(Game.current_game).to eq game
    end
  end

  describe '#initialize' do
    it 'has a player' do
      expect(game.players).to include player1
    end
  end

  describe '#reset' do
    it 'sets current_game to nil to reset state for rspec' do
      Game.reset
      expect(Game.current_game).to be_nil
    end
  end

  describe '#play' do

    context 'computer chooses rock' do
      before(:each) { allow(Kernel).to receive(:rand) { 2 } }

      it 'Computer wins when player is scissors and computer is rock' do
        allow(game).to receive(:computer_choice) { "Rock" }
        expect(game.play("Scissors")).to eq("Computer")
      end
      it 'Player wins when player is paper and computer is rock' do
        allow(game).to receive(:computer_choice) { "Rock" }
        expect(game.play("Paper")).to eq(player1_name)
      end
      it 'Tie when computer and player both choose Rock' do
        allow(game).to receive(:computer_choice) { "Rock" }
        expect(game.play("Rock")).to eq("Tie")
      end
    end

    context 'computer chooses scissors' do
      before(:each) { allow(Kernel).to receive(:rand) { 2 } }
      it 'Player wins when player is rock and computer is scissors' do
        expect(game.play("Rock")).to eq(player1_name)
      end
      it 'Computer wins when player is paper and computer is scissors' do
        allow(game).to receive(:computer_choice) { "Scissors" }
        expect(game.play("Paper")).to eq("Computer")
      end
      it 'Tie when computer and player both choose Scissors' do
        allow(game).to receive(:computer_choice) { "Scissors" }
        expect(game.play("Scissors")).to eq("Tie")
      end

    end

    context 'computer chooses paper' do
      before(:each) { allow(Kernel).to receive(:rand) { 1 } }

      it 'Computer wins when player is rock and computer is paper' do
        allow(game).to receive(:computer_choice) { "Paper" }
        expect(game.play("Rock")).to eq("Computer")
      end
      it 'Player wins when player is scissors and computer is paper' do
        allow(game).to receive(:computer_choice) { "Paper" }
        expect(game.play("Scissors")).to eq(player1_name)
      end
      it 'Tie when computer and player both choose Paper' do
        allow(game).to receive(:computer_choice) { "Paper" }
        expect(game.play("Paper")).to eq("Tie")
      end
    end
  end
end
