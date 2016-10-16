require 'player.rb'

describe Player do

  subject(:player) {described_class.new("Jon")}

  it 'shows name of the player' do
    expect(player.name).to eq "Jon"
  end
end
