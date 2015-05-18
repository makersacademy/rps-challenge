describe Game do

  it 'WIN: P1 rock, P2 scissors' do
  game = Game.new
  expect(game).to receive(:computer_choice) {'Scissors'}
  expect(game.result('Rock')[0]).to eq 'You win!'
end
end
