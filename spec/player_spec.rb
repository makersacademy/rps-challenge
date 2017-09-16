require 'player.rb'

describe Player do
  subject(:player) { described_class.new("Benjamin", weapon) }
  let(:weapon) {double(:weapon)}

  it 'returns a player name' do
  expect(player.name).to eq "Benjamin"
 end

  it 'can have a weapon' do
  allow(player).to receive(:weapon).and_return("paper")
  expect(player.weapon).to eq("paper")
 end
end
