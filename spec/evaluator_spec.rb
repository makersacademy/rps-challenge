require 'evaluator'

describe 'Evaluator' do

let(:user)      { User.new("Marcello") }
let(:game)      { Game.new(user)       }
let(:evaluator) { Evaluator.new(game)  }

  describe '#evaluate' do
    it "compares the user's and the opponent's choices and declares a winner (e.g. scissors vs rock)" do
      game.attack("scissors")
      allow(game).to receive(:random).and_return(0)
      game.receive_attack
      expect(evaluator.evaluate).to eq "lose"
    end

    it "compares the user's and the opponent's choices and declares a winner (e.g. scissors vs paper)" do
      game.attack("scissors")
      allow(game).to receive(:random).and_return(1)
      game.receive_attack
      expect(evaluator.evaluate).to eq "win"
    end  
  end

  describe '#message' do
    it "displays the message for the result" do
      game.attack("scissors")
      allow(game).to receive(:random).and_return(1)
      game.receive_attack
      evaluator.evaluate
      expect(evaluator.message).to eq "Well done Marcello, you won!"
    end

    it "displays the message for the result" do
      game.attack("rock")
      allow(game).to receive(:random).and_return(1)
      game.receive_attack
      evaluator.evaluate
      p evaluator.evaluate
      expect(evaluator.message).to eq "Too bad Marcello, you lost!"
    end

    it "displays the message for the result" do
      game.attack("paper")
      allow(game).to receive(:random).and_return(1)
      game.receive_attack
      evaluator.evaluate
      expect(evaluator.message).to eq "Marcello, it's a tie!"
    end
  end

end