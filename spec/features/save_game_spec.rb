feature 'a player can save and load games' do
  scenario 'a player saves a game' do
    register
    click_button :Rock
    click_button :Save
    expect(page).to have_content 'Game Saved'
  end

  scenario 'a player saves multiple games' do
    register
    click_button :Rock
    click_button "Play Again?"
    click_button :Paper
    click_button :Save
    expect(page).to have_content 'Game Saved'
  end
end
