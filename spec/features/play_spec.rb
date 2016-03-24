feature 'play game' do

  scenario 'selects options and plays game' do
    start_game
    play_rock
    expect(page).to have_text("You ")
  end

end