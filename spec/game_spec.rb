require 'game'

describe Game do
  subject(:game) {described_class.new}

  # it "the game chooses Paper" do
  #   allow(game).to receive(:game_choice).and_return('Paper')
  #   expect(game.game_choice).to eq 'Paper'
  # end

  it "chooses a random choice" do
    expect(['Rock', 'Paper', 'Scissors']).to include game.random_choice
  end
end
