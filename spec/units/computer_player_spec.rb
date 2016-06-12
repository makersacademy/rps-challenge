require 'computer_player'

describe ComputerPlayer do
  subject(:computer) { described_class.new }
  let(:weapons_array) { described_class::RPS_WEAPONS}

  describe "#initialize" do
    it "has name 'Ava'" do
      expect(computer.name).to eq "Ava"
    end
  end

  describe "#weaponise" do
    it "can be armed with ROCK" do
      allow(weapons_array).to receive(:shuffle).and_return([:rock])
      expect(computer.select_weapon).to eq :rock
    end

    it "can be armed with PAPER" do
      allow(weapons_array).to receive(:shuffle).and_return([:paper])
      expect(computer.select_weapon).to eq :paper
    end

    it "can be armed with SCISSORS" do
      allow(weapons_array).to receive(:shuffle).and_return([:scissors])
      expect(computer.select_weapon).to eq :scissors
    end

  end

  describe "#add_point" do
    it "adds +1 point to player_2's score" do
      expect{computer.add_point}.to change{computer.score}.by 1
    end
  end

end
