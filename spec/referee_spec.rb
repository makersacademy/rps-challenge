require 'spec_helper'
require 'referee'

describe Referee do
  subject(:referee) { described_class.new }

  describe "#result" do
    it "returns moves and winner of bout" do
      expect(referee.result(:rock, :paper)).to eq [:rock,:paper,:player2]
    end
    it "returns moves and draw if moves are the same" do
      expect(referee.result(:rock, :rock)).to eq [:rock, :rock, :draw]
    end
  end

end
