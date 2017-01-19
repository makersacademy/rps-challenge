require  'spec_helper'
require './lib/player.rb'

describe Player do

  it "should show the name of the user" do
    username = Player.new("Bryony")
    expect(username.name).to eq "Bryony"
  end


end
