feature 'Entering a name' do
  scenario 'user register by submitting name' do
    visit '/'
    fill_in :player_name, with: 'Sam'
    click_button 'Submit'
    expect(page).to have_content 'Sam'
  end
end
