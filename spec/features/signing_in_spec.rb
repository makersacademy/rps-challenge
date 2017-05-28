require_relative '../../app'

feature 'Signing in' do
  scenario 'Player enters their name and sees it on the game screen' do
    visit('/')
    fill_in('player_one_name', :with => 'Kye')
    click_button('Submit')
    expect(page).to have_content('Kye: choose your weapon!')
  end
end
