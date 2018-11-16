feature 'player can select rock, paper or scissors' do
  scenario 'player selects rock' do
    game_set_up
    expect(player_1.select_move(rock)).to eq (:rock)
  end
end
