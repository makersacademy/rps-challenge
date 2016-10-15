require 'spec_helper'

describe Player do

  it "takes in a player name and stores it in the class" do
    player = Player.new('Ali')
    expect(player.name).to eq 'Ali'
  end

end
