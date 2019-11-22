require "./lib/computer.rb"

describe Computer do

  subject { Computer.new("Computer") }

  it "can return it's name" do
    expect(subject.name).to eq "Computer"
  end

  it "returns a random choice when #enter_choice is called" do
    subject.enter_choice("argument")
    expect(["Rock", "Paper", "Scissors"]).to include(subject.choice)
  end

  context "can randomly return" do
    it "'Rock' approximately 1/3 of the time" do
      choices = []
      100_000.times do
        choices << subject.choose
      end
      fraction = (choices.count("Rock").to_f / 100_000).to_f
      expect(fraction).to be_within(0.05).of(0.33)
    end

    it "'Paper' approximately 1/3 of the time" do
      choices = []
      100_000.times do
        choices << subject.choose
      end
      fraction = (choices.count("Paper").to_f / 100_000).to_f
      expect(fraction).to be_within(0.05).of(0.33)
    end

    it "'Scissors' approximately 1/3 of the time" do
      choices = []
      100_000.times do
        choices << subject.choose
      end
      fraction = (choices.count("Scissors").to_f / 100_000).to_f
      expect(fraction).to be_within(0.05).of(0.33)
    end

  end
end
