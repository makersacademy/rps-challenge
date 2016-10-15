require 'spec_helper'
require 'player'

describe Player do
  # subject(:player) {described_class.new("Rory")}
  rory = Player.new("Rory")

  describe '#initialize' do
    it 'expects Player to store player name on instantiation' do
      expect(rory.name).to eq("Rory")

    end

  end


end
