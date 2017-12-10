feature 'homepage form' do
  scenario 'it should ask the user if they want Singleplayer' do
    visit '/'
    expect(page).to have_button 'Singleplayer'
  end
  scenario 'it should ask the user if they want multiplayer' do
    visit '/'
    expect(page).to have_button 'Multiplayer'
  end
  scenario 'it has a visible form asking for player name' do
    visit '/'
    click_on "Singleplayer"
    expect(page).to have_content "Name"
  end
end
