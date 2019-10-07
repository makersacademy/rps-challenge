require "result_checker"

describe ResultChecker do
  describe ".check" do
    context "gives 0 if there is a draw" do
      it "rock vs rock" do
        option1 = "rock"
        option2 = option1
        expect(described_class.check(option1, option2)).to eq 0
      end
      it "paper vs paper" do
        option1 = "paper"
        option2 = option1
        expect(described_class.check(option1, option2)).to eq 0
      end
      it "scissors vs scissors" do
        option1 = "scissors"
        option2 = option1
        expect(described_class.check(option1, option2)).to eq 0
      end
      it "lizzard vs lizzard" do
        option1 = "lizzard"
        option2 = option1
        expect(described_class.check(option1, option2)).to eq 0
      end
      it "spock vs spock" do
        option1 = "spock"
        option2 = option1
        expect(described_class.check(option1, option2)).to eq 0
      end
    end

    context "gives 1 if player 1 wins" do
      it "rock vs scissors" do
        option1 = "rock"
        option2 = "scissors"
        expect(described_class.check(option1, option2)).to eq 1
      end
      it "rock vs lizzard" do
        option1 = "rock"
        option2 = "lizzard"
        expect(described_class.check(option1, option2)).to eq 1
      end
      it "paper vs rock" do
        option1 = "paper"
        option2 = "rock"
        expect(described_class.check(option1, option2)).to eq 1
      end
      it "paper vs spock" do
        option1 = "paper"
        option2 = "spock"
        expect(described_class.check(option1, option2)).to eq 1
      end
      it "scissors vs paper" do
        option1 = "scissors"
        option2 = "paper"
        expect(described_class.check(option1, option2)).to eq 1
      end
      it "scissors vs lizzard" do
        option1 = "scissors"
        option2 = "lizzard"
        expect(described_class.check(option1, option2)).to eq 1
      end
      it "spock vs scissors" do
        option1 = "spock"
        option2 = "scissors"
        expect(described_class.check(option1, option2)).to eq 1
      end
      it "spock vs rock" do
        option1 = "spock"
        option2 = "rock"
        expect(described_class.check(option1, option2)).to eq 1
      end
      it "lizzard vs paper" do
        option1 = "lizzard"
        option2 = "paper"
        expect(described_class.check(option1, option2)).to eq 1
      end
      it "lizzard vs spock" do
        option1 = "lizzard"
        option2 = "spock"
        expect(described_class.check(option1, option2)).to eq 1
      end

    end

    context "gives 2 if player 2 wins" do
      it "rock vs paper" do
        option1 = "rock"
        option2 = "paper"
        expect(described_class.check(option1, option2)).to eq 2
      end
      it "paper vs scissors" do
        option1 = "paper"
        option2 = "scissors"
        expect(described_class.check(option1, option2)).to eq 2
      end
      it "scissors vs rock" do
        option1 = "scissors"
        option2 = "rock"
        expect(described_class.check(option1, option2)).to eq 2
      end
    end
  end
end
