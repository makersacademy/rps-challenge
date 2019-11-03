feature 'Weapon chooser' do
  scenario 'displays chosen weapon' do
    visit('/')
    fill_in :player_name, with: 'Bejlo'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end
end
