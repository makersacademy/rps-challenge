require 'game'
require 'pry'
describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  subject { Game.new(player_1: player_1, player_2: player_2) }

  it "should return the player_1" do
    expect(subject.player_1).to eq player_1
  end

  it "should return the player_2" do
    expect(subject.player_2).to eq player_2
  end

  describe "#outcome" do
    context "both players pick rock" do
      before {
        allow(player_1).to receive(:chose_rock?).and_return(true)
        allow(player_2).to receive(:chose_rock?).and_return(true)
      }
      it "should return 'You Draw :|'" do
        expect(subject.outcome).to eq "You Draw :|"
      end
    end

    context "both players pick paper" do
      before {
        allow(player_1).to receive(:chose_rock?).and_return(false)
        allow(player_2).to receive(:chose_rock?).and_return(false)
        allow(player_1).to receive(:chose_paper?).and_return(true)
        allow(player_2).to receive(:chose_paper?).and_return(true)
      }
      it "should return 'You Draw :|'" do
        expect(subject.outcome).to eq "You Draw :|"
      end
    end

    context "both players pick scissors" do
      before {
        allow(player_1).to receive(:chose_rock?).and_return(false)
        allow(player_2).to receive(:chose_rock?).and_return(false)
        allow(player_1).to receive(:chose_paper?).and_return(false)
        allow(player_2).to receive(:chose_paper?).and_return(false)
        allow(player_1).to receive(:chose_scissors?).and_return(true)
        allow(player_2).to receive(:chose_scissors?).and_return(true)
      }
      it "should return 'You Draw :|'" do
        expect(subject.outcome).to eq "You Draw :|"
      end
    end

    context "one player mode" do
      before {
        allow(player_2).to receive(:computer?).and_return(true)
      }
      context "player 1 chose rock, computer chose paper" do
        before {
          allow(player_1).to receive(:chose_rock?).and_return(true)
          allow(player_2).to receive(:chose_rock?).and_return(false)
          allow(player_1).to receive(:chose_paper?).and_return(false)
          allow(player_2).to receive(:chose_paper?).and_return(true)
          allow(player_1).to receive(:chose_scissors?).and_return(false)
          allow(player_2).to receive(:chose_scissors?).and_return(false)
        }
        it "returns 'You Lose :('" do
          expect(subject.outcome).to eq "You Lose :("
        end
      end

      context "player 1 chose paper, computer chose rock" do
        before {
          allow(player_1).to receive(:chose_rock?).and_return(false)
          allow(player_2).to receive(:chose_rock?).and_return(true)
          allow(player_1).to receive(:chose_paper?).and_return(true)
          allow(player_2).to receive(:chose_paper?).and_return(false)
          allow(player_1).to receive(:chose_scissors?).and_return(false)
          allow(player_2).to receive(:chose_scissors?).and_return(false)
        }
        it "returns 'You Win! :D'" do
          expect(subject.outcome).to eq "You Win! :D"
        end
      end

      context "player 1 chose paper, computer chose scissors" do
        before {
          allow(player_1).to receive(:chose_rock?).and_return(false)
          allow(player_2).to receive(:chose_rock?).and_return(false)
          allow(player_1).to receive(:chose_paper?).and_return(true)
          allow(player_2).to receive(:chose_paper?).and_return(false)
          allow(player_1).to receive(:chose_scissors?).and_return(false)
          allow(player_2).to receive(:chose_scissors?).and_return(true)
        }
        it "returns 'You Lose :('" do
          expect(subject.outcome).to eq "You Lose :("
        end
      end

      context "player 1 chose scissors, computer chose paper" do
        before {
          allow(player_1).to receive(:chose_rock?).and_return(false)
          allow(player_2).to receive(:chose_rock?).and_return(false)
          allow(player_1).to receive(:chose_paper?).and_return(false)
          allow(player_2).to receive(:chose_paper?).and_return(true)
          allow(player_1).to receive(:chose_scissors?).and_return(true)
          allow(player_2).to receive(:chose_scissors?).and_return(false)
        }
        it "returns 'You Win! :D'" do
          expect(subject.outcome).to eq "You Win! :D"
        end
      end

      context "player 1 chose scissors, computer chose rock" do
        before {
          allow(player_1).to receive(:chose_rock?).and_return(false)
          allow(player_2).to receive(:chose_rock?).and_return(true)
          allow(player_1).to receive(:chose_paper?).and_return(false)
          allow(player_2).to receive(:chose_paper?).and_return(false)
          allow(player_1).to receive(:chose_scissors?).and_return(true)
          allow(player_2).to receive(:chose_scissors?).and_return(false)
        }
        it "returns 'You Lose :('" do
          expect(subject.outcome).to eq "You Lose :("
        end
      end

      context "player 1 chose rock, computer chose scissors" do
        before {
          allow(player_1).to receive(:chose_rock?).and_return(true)
          allow(player_2).to receive(:chose_rock?).and_return(false)
          allow(player_1).to receive(:chose_paper?).and_return(false)
          allow(player_2).to receive(:chose_paper?).and_return(false)
          allow(player_1).to receive(:chose_scissors?).and_return(false)
          allow(player_2).to receive(:chose_scissors?).and_return(true)
        }
        it "returns 'You Win! :D'" do
          expect(subject.outcome).to eq 'You Win! :D'
        end
      end
    end

    context "two player mode" do
      before {
        allow(player_2).to receive(:computer?).and_return(false)
        allow(player_1).to receive(:name).and_return("Mario")
        allow(player_2).to receive(:name).and_return("Luigi")
      }
      context "player 1 chose rock, player 2 chose paper" do
        before {
          allow(player_1).to receive(:chose_rock?).and_return(true)
          allow(player_2).to receive(:chose_rock?).and_return(false)
          allow(player_1).to receive(:chose_paper?).and_return(false)
          allow(player_2).to receive(:chose_paper?).and_return(true)
          allow(player_1).to receive(:chose_scissors?).and_return(false)
          allow(player_2).to receive(:chose_scissors?).and_return(false)
        }
        it "returns 'Luigi Wins! :D'" do
          expect(subject.outcome).to eq "Luigi Wins! :D"
        end
      end

      context "player 1 chose paper, player 2 chose rock" do
        before {
          allow(player_1).to receive(:chose_rock?).and_return(false)
          allow(player_2).to receive(:chose_rock?).and_return(true)
          allow(player_1).to receive(:chose_paper?).and_return(true)
          allow(player_2).to receive(:chose_paper?).and_return(false)
          allow(player_1).to receive(:chose_scissors?).and_return(false)
          allow(player_2).to receive(:chose_scissors?).and_return(false)
        }
        it "returns 'Mario Wins! :D'" do
          expect(subject.outcome).to eq "Mario Wins! :D"
        end
      end

      context "player 1 chose paper, player 2 chose scissors" do
        before {
          allow(player_1).to receive(:chose_rock?).and_return(false)
          allow(player_2).to receive(:chose_rock?).and_return(false)
          allow(player_1).to receive(:chose_paper?).and_return(true)
          allow(player_2).to receive(:chose_paper?).and_return(false)
          allow(player_1).to receive(:chose_scissors?).and_return(false)
          allow(player_2).to receive(:chose_scissors?).and_return(true)
        }
        it "returns 'Luigi Wins! :D'" do
          expect(subject.outcome).to eq "Luigi Wins! :D"
        end
      end

      context "player 1 chose scissors, player 2 chose paper" do
        before {
          allow(player_1).to receive(:chose_rock?).and_return(false)
          allow(player_2).to receive(:chose_rock?).and_return(false)
          allow(player_1).to receive(:chose_paper?).and_return(false)
          allow(player_2).to receive(:chose_paper?).and_return(true)
          allow(player_1).to receive(:chose_scissors?).and_return(true)
          allow(player_2).to receive(:chose_scissors?).and_return(false)
        }
        it "returns 'Mario Wins! :D'" do
          expect(subject.outcome).to eq "Mario Wins! :D"
        end
      end

      context "player 1 chose scissors, player 2 chose rock" do
        before {
          allow(player_1).to receive(:chose_rock?).and_return(false)
          allow(player_2).to receive(:chose_rock?).and_return(true)
          allow(player_1).to receive(:chose_paper?).and_return(false)
          allow(player_2).to receive(:chose_paper?).and_return(false)
          allow(player_1).to receive(:chose_scissors?).and_return(true)
          allow(player_2).to receive(:chose_scissors?).and_return(false)
        }
        it "returns 'Luigi Wins! :D'" do
          expect(subject.outcome).to eq "Luigi Wins! :D"
        end
      end

      context "player 1 chose rock, player 2 chose scissors" do
        before {
          allow(player_1).to receive(:chose_rock?).and_return(true)
          allow(player_2).to receive(:chose_rock?).and_return(false)
          allow(player_1).to receive(:chose_paper?).and_return(false)
          allow(player_2).to receive(:chose_paper?).and_return(false)
          allow(player_1).to receive(:chose_scissors?).and_return(false)
          allow(player_2).to receive(:chose_scissors?).and_return(true)
        }
        it "returns 'Mario Wins! :D'" do
          expect(subject.outcome).to eq "Mario Wins! :D"
        end
      end
    end
  end

  describe "#self.create" do
    it "should return a Game" do
      expect(Game.create(player_1: player_1)).to be_a Game
    end
  end

  describe "self.instance" do
    it "should return the created Game" do
      game = Game.create(player_1: player_1)
      expect(Game.instance).to eq game
    end
  end
end
