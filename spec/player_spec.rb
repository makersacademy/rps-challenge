require_relative '../lib/player'

describe Player do
  let(:joe) { Player.new("Joe") }
  let(:com) { Player.new("Computer") }

  context "#creation" do
    it "has a name" do
      expect(joe.name).to eq "Joe"
    end
  end

  context "#random_choice" do
    it "can randomly choose rock, paper, or scissors for the computer" do
      srand 1
      expect(com.random_choice).to eq "Paper"
    end
  end
end
