require 'player'
describe Player do
  let(:name) { 'Gilgamesh' }
  let(:choice) { 'rock' }
  let(:choices) { %w(rock paper scissors) }
  it 'has a name and choice' do
    player = Player.new(name, choice)
    expect(player.name).to match(name)
    expect(player.choice).to match(choice)
  end

  it 'makes a random choice be default' do
    player = Player.new(name)
    puts "player choice: #{player.choice}"
    expect(choices.include?(player.choice)).to eq(true)
  end
end
