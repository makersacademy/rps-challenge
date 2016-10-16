require 'player'

describe Player do

  subject(:frances) { described_class.new("Frances") }

  describe '#initialize' do
    it 'allows you to register a name' do
      expect(frances.name).to eq "Frances"
    end
  end

  describe '#set_choice' do
    it "returns the player's selection" do
      subject.set_choice(:rock)
      expect(subject.choice).to eq :rock
    end
  end
end
