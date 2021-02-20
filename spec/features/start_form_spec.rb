feature 'Form for player name' do
  scenario 'Player enters & submits their name - sees it glowing on the screen in CAPS.' do
    sign_in_and_play
    expect(page).to have_content("PLAYER")
  end
end
