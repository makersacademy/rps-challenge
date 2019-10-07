require 'game'

describe Game do
  let(:player1) { double "Dove" }
  let(:move) { double "Scissors" }
  subject(:game) { described_class.new(player1, move) }

  it 'allows access to players' do
    expect(player1).to receive(:name)
    game.player1.name
  end

  it 'generates a random throw' do
    expect(["Rock", "Paper", "Scissors"]).to include(game.shoot)
  end

  it 'creates a message to announce the winner' do
    allow(game).to receive(:shoot).and_return("Scissors")
    expect(game.message).to eq("No one wins and everyone is sad.")
  end
end
  