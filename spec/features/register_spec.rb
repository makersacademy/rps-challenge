feature 'Register' do

  scenario 'Enter player name' do
    visit('/')
    fill_in :player_name, with: 'Matt'
    click_button 'Submit'
    expect(page).to have_content('Welcome Matt')
  end

end
