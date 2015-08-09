describe Game do
  it {is_expected.to respond_to :choose_random}
  it 'chooses a random move' do
    game = Game.new
    expect(game.choose_random).not_to eq 0
  end
end
