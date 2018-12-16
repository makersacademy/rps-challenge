require 'app'

feature '/play' do
  scenario 'shows the users name' do
    visit '/'
    fill_in 'player_name', with: 'Adam'
    click_button 'Submit'
    expect(page).to have_content 'Adam'
  end
end
