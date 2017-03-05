require 'computer'

feature 'computer responds to player' do
  scenario 'computer turn generated on results page' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Computer chose"
  end
end
