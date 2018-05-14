require 'calc_result'

describe Result do
  context "When P1 plays rock" do
    describe "and P2 plays rock" do
      it "it's a draw" do
        expect(Result.new("P1", "rock", "P2", "rock").calculate).to eq 'It\'s a draw!'
      end
    end

    describe "and P2 plays paper" do
      it "P2 wins" do
        expect(Result.new("P1", "rock", "P2", "paper").calculate).to eq 'P2 is the winner!'
      end
    end

    describe "and P2 plays scissors" do
      it "P1 wins" do
        expect(Result.new("P1", "rock", "P2", "scissors").calculate).to eq 'P1 is the winner!'
      end
    end
  end

  context "When P1 plays paper" do
    describe "and P2 plays rock" do
      it "P1 wins" do
        expect(Result.new("P1", "paper", "P2", "rock").calculate).to eq 'P1 is the winner!'
      end
    end

    describe "and P2 plays paper" do
      it "it's a draw" do
        expect(Result.new("P1", "paper", "P2", "paper").calculate).to eq 'It\'s a draw!'
      end
    end

    describe "and P2 plays scissors" do
      it "P2 wins" do
        expect(Result.new("P1", "paper", "P2", "scissors").calculate).to eq 'P2 is the winner!'
      end
    end
  end

  context "When P1 plays scissors" do
    describe "and P2 plays rock" do
      it "P2 wins" do
        expect(Result.new("P1", "scissors", "P2", "rock").calculate).to eq 'P2 is the winner!'
      end
    end

    describe "and P2 plays paper" do
      it "P1 wins" do
        expect(Result.new("P1", "scissors", "P2", "paper").calculate).to eq 'P1 is the winner!'
      end
    end

    describe "and P2 plays scissors" do
      it "it's a draw" do
        expect(Result.new("P1", "scissors", "P2", "scissors").calculate).to eq 'It\'s a draw!'
      end
    end
  end

end
