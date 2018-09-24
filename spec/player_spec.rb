require 'player'

describe Player do
  subject { Player.new("Alex", computer) }

  let(:computer) { double(:computer) }

  describe "#name" do
    it 'shows the player name' do
      allow(computer).to receive(:choice).and_return("paper")
      expect(subject.name).to eq("Alex")
    end
  end

  describe "#play" do

    it 'return lost if I choose rock and computer is paper' do
      allow(computer).to receive(:choice).and_return("paper")
      expect(subject.move("rock")).to eq("Lost")
    end

    it 'return draw if I choose draw and computer too' do
      allow(computer).to receive(:choice).and_return("paper")
      expect(subject.move("paper")).to eq("Draw")
    end
  end

end
