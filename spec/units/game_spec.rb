require "game"

describe Game do
  let (:subject) { Game.new("Dan") }
  describe "#name" do
    it "can set a name on init and retrieve with an attr reader" do
      game = Game.new("Dan")
      expect(game.name).to eq "Dan"
    end
  end

  describe "#instance" do
    it "can create an instance of itself as a class variable and retrieve that instance" do
      game = Game.create("Dan")
      expect(Game.instance).to eq game
    end
  end

  describe "#random_choice" do
    it "sometimes returns rock" do
      srand 2020
      expect(subject.random_choice).to eq "rock"
    end
    it "sometimes returns paper" do
      srand 1066
      expect(subject.random_choice).to eq "paper"
    end
    it "sometimes returns scissors" do
      srand 1994
      expect(subject.random_choice).to eq "scissors"
    end
  end

  describe "#play" do
    context " when the computer chooses rock" do
      before { allow(subject).to receive(:random_choice).and_return("rock") }
      it " and the player chooses rock, return draw and add one to draws" do
        expect(subject.play("rock")).to eq "draw"
        expect { subject.play("rock") }.to change { subject.draws }.by(1)
      end
      it " and the player chooses paper, return win and add one to wins" do
        expect(subject.play("paper")).to eq "win"
        expect { subject.play("paper") }.to change { subject.wins }.by(1)
      end
      it " and the player chooses scissors, return lose and add one to losses" do
        expect(subject.play("scissors")).to eq "lose"
        expect { subject.play("scissors") }.to change { subject.losses }.by(1)
      end
    end
    context " when the computer chooses paper" do
      before { allow(subject).to receive(:random_choice).and_return("paper") }
      it " and the player chooses paper, return draw and add one to draws" do
        expect(subject.play("paper")).to eq "draw"
        expect { subject.play("paper") }.to change { subject.draws }.by(1)
      end
      it " and the player chooses scissors, return win and add one to wins" do
        expect(subject.play("scissors")).to eq "win"
        expect { subject.play("scissors") }.to change { subject.wins }.by(1)
      end
      it " and the player chooses rock, return lose and add one to losses" do
        expect(subject.play("rock")).to eq "lose"
        expect { subject.play("rock") }.to change { subject.losses }.by(1)
      end
    end
    context " when the computer chooses scissors" do
      before { allow(subject).to receive(:random_choice).and_return("scissors") }
      it " and the player chooses scissors, return draw and add one to draws" do
        expect(subject.play("scissors")).to eq "draw"
        expect { subject.play("scissors") }.to change { subject.draws }.by(1)
      end
      it " and the player chooses rock, return win and add one to wins" do
        expect(subject.play("rock")).to eq "win"
        expect { subject.play("rock") }.to change { subject.wins }.by(1)
      end
      it " and the player chooses paper, return lose and add one to losses" do
        expect(subject.play("paper")).to eq "lose"
        expect { subject.play("paper") }.to change { subject.losses }.by(1)
      end
    end
  end
end
