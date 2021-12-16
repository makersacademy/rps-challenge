require 'game'

describe Game do 
  let(:subject) { Game.new("paper") }
  context "set up" do
    it 'input from the player' do
      expect(subject.inputs).to eq(["paper"])
    end

    it 'input from a computer opponent' do
      allow(subject).to receive(:opponent_input) { "rock" }
      expect(subject.store_opponent_input).to eq("rock")
    end

    it 'answer is random from the computer opponent' do
      expect(["rock","paper","scissor"]).to include(subject.store_opponent_input)
    end
  end 

  context "result" do
    it 'LOSE: rock vs. scissor' do 
      game = Game.new("scissor")
      allow(game).to receive(:opponent_input) { "rock" }
      expect(game.result).to eq(:lose)
    end

    it 'WIN: rock vs. paper' do 
      game = Game.new("paper")
      allow(game).to receive(:opponent_input) { "rock" }
      expect(game.result).to eq(:win)
    end

    it 'WIN: scissor vs. rock' do 
      game = Game.new("rock")
      allow(game).to receive(:opponent_input) { "scissor" }
      expect(game.result).to eq(:win)
    end

    it 'LOSE: scissor vs. paper' do 
      game = Game.new("paper")
      allow(game).to receive(:opponent_input) { "scissor" }
      expect(game.result).to eq(:lose)
    end

    it 'WIN: paper vs. scissor' do 
      game = Game.new("scissor")
      allow(game).to receive(:opponent_input) { "paper" }
      expect(game.result).to eq(:win)
    end

    it 'LOSE: paper vs. rock' do 
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
