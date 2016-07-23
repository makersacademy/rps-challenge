require 'player'

describe Player do
  subject(:player) {described_class.new("Samed")}
  subject(:computer) {described_class.new}
  it "is computer by default" do
    expect(computer.name).to eq "Computer"
  end

  describe "has a name" do
    it "has a name" do
      expect(player.name).to eq "Samed"
    end
  end

  describe "can choose an option" do
    it "chooses rock and returns rock" do
      expect(player.choose_option("rock")).to eq "rock"
    end
  end
end
