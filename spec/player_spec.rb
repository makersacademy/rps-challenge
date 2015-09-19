require 'player'
describe Player do

  let(:player) {Player.new("Harry")}

  it 'has a name when initialize' do
    expect(player.name).to eq "Harry"
  end

  it 'can choose rock' do
    player.choose("rock")
    expect(player.chosen_object).to eq "Rock"
  end


end
