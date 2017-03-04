require 'game'

describe Game do
  subject(:game) {described_class.new}
  it 'has an array of weapons' do
    expect(game.weapons).to eq ['rock', 'paper', 'scissors']
  end
end
