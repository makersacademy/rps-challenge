require 'game'

describe Game do 
  let(:subject) { Game.new("paper") }
  context "set up" do
    it 'input from the player' do
      expect(subject.inputs).to eq(["paper"])
    end
  end 

  context "result" do
    it 'LOSE: scissor vs. rock' do 
      game = Game.new("scissor")
      allow(game).to receive(:opponent_input) { "rock" }
      expect(game.result).to eq(:lose)
    end

    it 'WIN: paper vs. rock' do 
      game = Game.new("paper")
      allow(game).to receive(:opponent_input) { "rock" }
      expect(game.result).to eq(:win)
    end

    it 'WIN: rock vs. scissor' do 
      game = Game.new("rock")
      allow(game).to receive(:opponent_input) { "scissor" }
      expect(game.result).to eq(:win)
    end

    it 'LOSE: paper vs. scissor' do 
      game = Game.new("paper")
      allow(game).to receive(:opponent_input) { "scissor" }
      expect(game.result).to eq(:lose)
    end

    it 'WIN: scissor vs. paper' do 
      game = Game.new("scissor")
      allow(game).to receive(:opponent_input) { "paper" }
      expect(game.result).to eq(:win)
    end

    it 'LOSE: rock vs. paper' do 
      game = Game.new("rock")
      allow(game).to receive(:opponent_input) { "paper" }
      expect(game.result).to eq(:lose)
    end

    it 'DRAW: when it is a draw' do
      game = Game.new("rock")
      allow(game).to receive(:opponent_input) { "rock" }
      expect(game.result).to eq(:draw)
    end
  end
end
