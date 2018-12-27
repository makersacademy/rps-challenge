feature 'Player registers' do
  scenario 'player submit a name' do
    visit '/'
    fill_in :player_name, with: 'Sam'
    click_button 'Submit'
    expect(page).to have_content 'Sam'
  end
end
