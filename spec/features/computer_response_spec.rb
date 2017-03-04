require 'computer'

feature 'computer responds to player' do
  scenario 'computer turn generated on results page' do
    visit '/'
    fill_in :player_name, with: 'Bernard'
    click_button 'Play'
    click_button 'Rock'
    expect(page).to have_content "Computer chose"
  end
end
