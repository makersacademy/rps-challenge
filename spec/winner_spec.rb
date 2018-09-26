require 'winner'

describe Winner do
  describe '#winner' do
    it 'Announces player 1 wins' do
      subject = described_class.new("Mindy", "ROCK!", "SCISSORS!")
      expect(subject.who_wins).to eq 'Mindy WON!!!'
    end

    it 'Announces computer wins' do
      subject = described_class.new("Mindy", "PAPER!", "SCISSORS!")
      expect(subject.who_wins).to eq 'I WON!!!'
    end

    it 'Announces at tie' do
      subject = described_class.new("Mindy", "ROCK!", "ROCK!")
      expect(subject.who_wins).to eq 'IT\'S A TIE!'
    end

    # it "should raise message for invalid user choice" do
    #   subject = described_class.new("lizzard", "rock")
    #   expect { subject.who_wins }.to raise_error "You have to choose either rock, paper or scissors to play!"
    # end

    # it "should raise message for invalid user choice" do
    #   subject = described_class.new(nil, "paper")
    #   expect { subject.who_wins }.to raise_error "You have to choose either rock, paper or scissors to play!"
    # end
    #
    # it "should raise message for invalid user choice" do
    #   subject = described_class.new(nil, "scissors")
    #   expect { subject.who_wins }.to raise_error "You have to choose either rock, paper or scissors to play!"
    # end
  end
end
