require './lib/game'
require './lib/player'

describe Player do
  it 'Player 1 is Marija' do
    marija = Player.new("Marija")
    expect(marija.name).to eq "Marija"
  end

  it 'Marijas choice is a rock' do
    marija = Player.new("Marija")
    rock = "rock"
    expect(marija.player_choice(rock)).to eq "rock"
  end
end
