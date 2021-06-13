feature 'Getting player name' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1, with: 'Omni-Man'
    click_button "Let's play!"
    expect(page).to have_content "Let's go, Omni-Man!"
  end
end 