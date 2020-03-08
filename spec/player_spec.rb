require 'player'
describe Player do
  subject(:player) { described_class.new('neha') }
  it 'gives player name' do
    expect(player.name).to eq 'neha'
  end
  it "sets user's move as selected by the user" do
    player.option(:scissors)
    expect(player.move).to eq :scissors
  end
end
