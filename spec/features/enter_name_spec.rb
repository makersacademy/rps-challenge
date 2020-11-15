feature 'player name' do
  scenario 'player submits name' do
    visit'/'
    fill_in('player_name', with: 'savanna')
    click_button "Let's go!"
    expect(page).to have_content('Savanna')
  end
end
