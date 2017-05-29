
feature 'Replay' do
  scenario 'player can replay the game once completed' do
    play_as_rock
    click_button("Let's go!")
    expect(page).to have_button "Play again?"
  end
