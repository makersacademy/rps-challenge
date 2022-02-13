require './app'

feature 'select option' do
  scenario 'player has selected one option' do
    visit('/')
    fill_in :player_name, with: 'Marie'
    click_button 'Play'
    choose(option: 'scissors')
    click_button 'Play'
    expect(page).to have_content 'scissors'
  end
end
