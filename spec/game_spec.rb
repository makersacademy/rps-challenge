require_relative '../lib/game'

describe Game do

  subject(:game) { described_class.new(player_one, player_two) }

  let(:player_one) { double() }
  let(:player_two) { double() }

  describe '#play_game' do
    it "returns a win for the first player" do
      allow(player_one).to receive(:weapon).and_return(:paper)
      allow(player_two).to receive(:weapon).and_return(:rock)
      expect(game.play_game).to eq :win
    end

  end

  context 'rules of rock paper scisssor' do

    context "paper" do
      before (:each) do
        allow(player_one).to receive(:weapon).and_return(:paper)
      end

      it "beats rock" do
        allow(player_two).to receive(:weapon).and_return(:rock)
        expect(game.play_game).to eq :win
      end

      it "loses to scissors" do
        allow(player_two).to receive(:weapon).and_return(:scissors)
        expect(game.play_game).to eq :lose
      end
    
      it "draws to paper" do
        allow(player_two).to receive(:weapon).and_return(:paper)
        expect(game.play_game).to eq :draw
      end
    end
  
    context "scissors" do
      before (:each) do
        allow(player_one).to receive(:weapon).and_return(:scissors)
      end

      it "beats paper" do
        allow(player_two).to receive(:weapon).and_return(:paper)
        expect(game.play_game).to eq :win
      end

      it "loses to rock" do
        allow(player_two).to receive(:weapon).and_return(:rock)
        expect(game.play_game).to eq :lose
      end
    
      it "draws to scissors" do
        allow(player_two).to receive(:weapon).and_return(:scissors)
        expect(game.play_game).to eq :draw
      end
    end

    context "rock" do
      before (:each) do
        allow(player_one).to receive(:weapon).and_return(:rock)
      end

      it "beats scissors" do
        allow(player_two).to receive(:weapon).and_return(:scissors)
        expect(game.play_game).to eq :win
      end

      it "loses to paper" do
        allow(player_two).to receive(:weapon).and_return(:paper)
        expect(game.play_game).to eq :lose
      end
    
      it "draws to rock" do
        allow(player_two).to receive(:weapon).and_return(:rock)
        expect(game.play_game).to eq :draw
      end
    end

  end
end
