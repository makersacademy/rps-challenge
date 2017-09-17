require 'game.rb'

describe Game do

  subject(:game) {described_class.new(player, computer)}
  let(:player) {double(:player)}
  let(:computer) {double(:computer)}

  it 'can instantiate a new game' do
    expect(game).to eq(game)
  end

  it 'can either have a winner' do
    allow(game).to receive(:play).and_return("The computer won")
    expect(game.play).to eq("The computer won")
  end

  it 'can have a draw' do
    allow(game).to receive(:play).and_return("Draw")
    expect(game.play).to eq("Draw")
  end
end
