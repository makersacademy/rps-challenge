require "./lib/rps.rb"

describe Computer do

  context "can randomly return" do
    it "'Rock' approximately 1/3 of the time" do
      choices = []
      100000.times do
        choices << subject.choose
      end
      fraction = (choices.count("Rock").to_f / 100000).to_f
      expect(fraction).to be_within(0.05).of(0.33)
    end

    it "'Paper' approximately 1/3 of the time" do
      choices = []
      100000.times do
        choices << subject.choose
      end
      fraction = (choices.count("Paper").to_f / 100000).to_f
      expect(fraction).to be_within(0.05).of(0.33)
    end

    it "'Scissors' approximately 1/3 of the time" do
      choices = []
      100000.times do
        choices << subject.choose
      end
      fraction = (choices.count("Scissors").to_f / 100000).to_f
      expect(fraction).to be_within(0.05).of(0.33)
    end

  end
end
