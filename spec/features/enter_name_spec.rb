feature 'enter name' do
  scenario 'player enters name and receives confirmation' do
    visit('/')
    fill_in :player_name, with: 'Jim'
    click_button 'Submit'
    expect(page).to have_content('Jim vs. Machine')
  end
end
