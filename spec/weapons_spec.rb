require 'weapons'

describe Weapons do

	let(:game) { (Class.new {include Weapons}).new }

	describe "#beats?" do

		it "returns true for rock vs scissors" do
			expect(game.beats?(:rock, :scissors)).to eq true
		end

		it "returns false for paper vs scissors" do
			expect(game.beats?(:paper, :scissors)).to eq false
		end
	end
end