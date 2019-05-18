require 'player'

describe Player do
  subject(:sam) { Player.new('Sam') }

  describe '#initialize' do
    it "initializes with players name" do
      expect(subject.name).to eq("Sam")
    end
  end
end
