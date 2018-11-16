require 'player'

describe Player do
  let(:name) { 'Gilgamesh' }
  let(:choice) { 'rock' }
  let(:choices) { %w(rock paper scissors) }
  let(:player) { Player.new(name, choice) }
  let(:player_default_choice) { Player.new(name) }
  it 'has a name and choice' do
    expect(player.name).to match(name)
    expect(player.choice).to match(choice)
  end

  it 'makes a random choice be default' do
    expect(choices.include?(player_default_choice.choice)).to eq(true)
  end
end
