require 'player'

describe Player do
  subject(:homer) { Player.new("homer") }
  it 'checks that the player name is equal to the player instance variable' do
    expect(homer.name).to eq("homer")
  end


end
