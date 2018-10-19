require "player.rb"
describe Player do
subject(:player) { described_class.new(name: "John", choice: "Rock") }
  it 'has a choice' do
    expect(player.choice).to eq "Rock"
  end
end
