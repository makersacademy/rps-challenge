require 'player.rb'

describe Player do
  let(:name) {:John}
  subject(:john) { described_class.new(name) }

  describe "#name" do
    it "returns the player's name" do
      expect(john.name).to eq :John
    end
  end

  describe "#move" do
    it "should initialize as nil" do
      expect(john.move).to be nil
    end
  end

  describe "#rock" do
    it "should change move to rock" do
      john.rock
      expect(john.move).to eq :rock
    end
  end

  describe "#paper" do
    it "should change move to rock" do
      john.paper
      expect(john.move).to eq :paper
    end
  end

  describe "#scissors" do
    it "should change move to scissors" do
      john.scissors
      expect(john.move).to eq :scissors
    end
  end

end
