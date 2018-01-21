require 'player'

describe Player do

  subject(:player) { described_class.new("Jennifer") }

  it '#makes_choice' do
    player.makes_choice("ROCK")
    expect(player.choice).to eq "ROCK"
  end
end
