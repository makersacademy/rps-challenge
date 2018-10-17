require 'game'

describe Game do
  let(:game)      { described_class.new(player_1, player_2) }
  let(:player_1)  { double :player_1 }
  let(:player_2)  { double :player_2 }
  let(:option)    { 'rock' }

  describe "initialize" do
    it "should assign a player to player_1" do
      expect(game.player_1).to eq player_1
    end

    it "should assign a player to player_2" do
      expect(game.player_2).to eq player_2
    end
  end

  describe '.create' do
    it "creates an instance of the described class" do
      expect(described_class).to receive(:new).with(player_1)
      described_class.create(player_1)
    end
  end

  describe '.instance' do
    it "sets the previously created instance of the class" do
      Game.create(player_1)
      expect(Game.instance).to be_a Game
    end
  end

  describe 'play' do
    it 'functions to assign options to players are called' do
      expect(player_1).to receive(:choose_option).with(option)
      expect(player_2).to receive(:random_option)
      game.play(option)
    end

    it 'instructs computer to choose an option' do
      allow(player_1).to receive(:choose_option).with(option)
      allow(player_2).to receive(:random_option).and_return('paper')
      expect(game.play(option)).to eq 'paper'
    end
  end

  describe "#tie?" do
    it "should return true if both players chose the same option" do
      allow(player_1).to receive(:chosen_option).and_return('paper')
      allow(player_2).to receive(:chosen_option).and_return('paper')
      expect(game.tie?).to be true
    end

    it "should return false if players chose different options" do
      allow(player_1).to receive(:chosen_option).and_return('paper')
      allow(player_2).to receive(:chosen_option).and_return('rock')
      expect(game.tie?).to be false
    end
  end

  describe "#winner" do
    context "player 1 chooses paper" do
      before do
        allow(player_1).to receive(:chosen_option).and_return('paper')
      end
      it "player 1 should win if player 2 chooses rock" do
        allow(player_2).to receive(:chosen_option).and_return('rock')
        expect(game.winner).to eq player_1
      end

      it "player 2 should win if player 2 chooses scissors" do
        allow(player_2).to receive(:chosen_option).and_return('scissors')
        expect(game.winner).to eq player_2
      end
    end

    context "player 1 chooses rock" do
      before do
        allow(player_1).to receive(:chosen_option).and_return('rock')
      end
      it "player 1 should win if player 2 chooses scissors" do
        allow(player_2).to receive(:chosen_option).and_return('scissors')
        expect(game.winner).to eq player_1
      end

      it "player 2 should win if player 2 chooses paper" do
        allow(player_2).to receive(:chosen_option).and_return('paper')
        expect(game.winner).to eq player_2
      end
    end

    context "player 1 chooses scissors" do
      before do
        allow(player_1).to receive(:chosen_option).and_return('scissors')
      end
      it "player 1 should win if player 2 chooses paper" do
        allow(player_2).to receive(:chosen_option).and_return('paper')
        expect(game.winner).to eq player_1
      end

      it "player 2 should win if player 2 chooses rock" do
        allow(player_2).to receive(:chosen_option).and_return('rock')
        expect(game.winner).to eq player_2
      end
    end
  end
end
