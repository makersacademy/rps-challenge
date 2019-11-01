require './app.rb'

feature 'Choice' do
  scenario 'choosing Rock' do
    sign_in
    fill_in :game_entry, with: 'Rock'
    click_link 'Submit'
    expect(page).to have_content 'You have chosen: Rock'
  end
end