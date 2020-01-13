require 'game'

describe Game do
  it 'can play rps game' do
    game = Game.new(:rock)
    allow(game).to_receive(:computer_move).and_return(:paper)
    expect(game.play).to eq "You have lost!"
  end
end
