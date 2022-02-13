require './app'

feature 'Three choices available' do
  scenario 'Has three options' do
    visit('/')
    expect(page).to have_content 'Enter your name'
    fill_in :player_name, with: 'Marie'
    click_button 'Play'
    expect(page).to have_content 'rock paper scissors'
  end
end
