feature 'getting player name' do
  scenario 'player enters name which is then displayed' do
    visit '/'
    fill_in :player_name, with: "Paul"
    click_button "Game on!"
    expect(page).to have_content "Welcome Paul!"
  end
end
