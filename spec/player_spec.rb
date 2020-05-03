require './lib/game'
require './lib/player'

describe Player do
  it 'Player 1 is Marija' do
    marija = Player.new("Marija", "rock")
    expect(marija.name).to eq "Marija"
  end
  it 'Marijas choice is a rock' do
    marija = Player.new("Marija", "rock")
    expect(marija.choice).to eq "rock"
  end
end
