require 'result'

RSpec.describe Result do
  describe '#result' do
    it "loss" do
      user = "paper"
      computer = "scissors"
      expect(Result.lose?(user, computer)).to be true
      expect(Result.run(user, computer)).to eq "You lose!"
    end

    it "victory" do
      user = "paper"
      computer = "rock"
      expect(Result.win?(user, computer)).to be true
      expect(Result.run(user, computer)).to eq "You win!"
    end

    it "tie" do
      user = "paper"
      computer = "paper"
      expect(Result.run(user, computer)).to eq "It's a tie! Play again!"
    end

  end
end
