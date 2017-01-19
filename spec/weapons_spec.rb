require 'weapons'

describe Weapons do

  let(:game) {(Class.new { include Weapons}).new }

  describe '#beats?' do

    it "returns true for paper vs rock" do
      expect(game.beats?(:paper, :rock)).to eq true
    end

  end
  
end
