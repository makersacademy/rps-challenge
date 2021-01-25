require 'game'

describe "Game" do

  let(:rock) { Game.new("Rock") }
  let(:paper) { Game.new("Paper") }
  let(:scissors) { Game.new("Scissors") }

  describe "initialize" do

    it "recognises the player's choice" do
      expect(rock.character).to eq("Rock")
    end

  end

  describe "enemy" do

    it "chooses an opponent randomly" do
      opponent_test = []
      100.times do
        opponent_test.push(rock.enemy)
      end
      expect(opponent_test).to include("Rock")
      expect(opponent_test).to include("Paper")
      expect(opponent_test).to include("Scissors")
    end
  end

  describe "play" do

    it "plays a game and responds with victory conditions for Rock v Paper" do
      allow(rock).to receive(:enemy) { 'Paper' }
      rock.play
      expect(rock.result).to eq("Paper covers Rock. You lose!")
    end

    it "plays a game and responds with victory conditions for Rock v Scissors" do
      allow(rock).to receive(:enemy) { 'Scissors' }
      rock.play
      expect(rock.result).to eq("Rock blunts Scissors. You win!")
    end

    it "plays a game and responds with victory conditions for Rock v Rock" do
      allow(rock).to receive(:enemy) { 'Rock' }
      rock.play
      expect(rock.result).to eq("It's a draw")
    end

    it "plays a game and responds with victory conditions for Paper v Scissors" do
      allow(paper).to receive(:enemy) { 'Scissors' }
      paper.play
      expect(paper.result).to eq("Scissors cuts Paper. You lose!")
    end

    it "plays a game and responds with victory conditions for Paper v Rock" do
      allow(paper).to receive(:enemy) { 'Rock' }
      paper.play
      expect(paper.result).to eq("Paper covers Rock. You win!")
    end

    it "plays a game and responds with victory conditions for Paper v Paper" do
      allow(paper).to receive(:enemy) { 'Paper' }
      paper.play
      expect(paper.result).to eq("It's a draw")
    end

    it "plays a game and responds with victory conditions for Scissors v Rock" do
      allow(scissors).to receive(:enemy) { 'Rock' }
      scissors.play
      expect(scissors.result).to eq("Rock blunts Scissors. You lose!")
    end

    it "plays a game and responds with victory conditions for Scissors v Paper" do
      allow(scissors).to receive(:enemy) { 'Paper' }
      scissors.play
      expect(scissors.result).to eq("Scissors cuts Paper. You win!")
    end

    it "plays a game and responds with victory conditions for Scissors v Scissors" do
      allow(scissors).to receive(:enemy) { 'Scissors' }
      scissors.play
      expect(scissors.result).to eq("It's a draw")
    end

  end

end
