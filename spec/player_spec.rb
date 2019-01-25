require 'player'
describe Player do

  let(:player1) { Player.new("Marketeer") }

  it 'Player class initializes with a name' do
    expect(player1.name).to eq "Marketeer"
  end

end
