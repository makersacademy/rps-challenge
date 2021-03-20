require 'game'

describe Game do
  let(:new_game) { Game.new("Crazy Teaspoon") }

  it 'initializes a computer variable with a random choice' do
    allow(new_game).to receive(:computer).and_return "Scissors"
    expect(new_game.computer).to eq("Scissors")
  end

end
