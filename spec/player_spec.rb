require 'player'

describe '#name' do
  it 'retuens the name' do
    expect(Player.new("Cindy").name).to eq "Cindy"
  end
end
