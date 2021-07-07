require './app.rb'

feature 'Choice' do
  scenario 'choosing an entry' do
    sign_in
    fill_in :game_entry, with: 'Rock'
    click_button'Submit'
    expect(page).to have_content 'You have chosen: Rock'
  end
end