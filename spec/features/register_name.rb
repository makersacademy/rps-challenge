feature 'Registering name' do
  scenario 'Player enters name' do
    visit('/')
    fill_in(:player_name, with: 'Keldra') 
    click_button 'Submit'

    save_and_open_page

    expect(page).to have_content 'Keldra'
  end
end