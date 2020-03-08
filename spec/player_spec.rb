require 'player.rb'

describe Player do
subject(:player) { described_class.new("Will") }

  it "initializes with a name" do
    expect(player.name).to eq("Will")
  end

  it "assign choose_weapon to user choice" do
    player.choose_weapon("Scissors")
    expect(player.user_choice).to eq("Scissors")
  end



end
