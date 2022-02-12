require './app'

feature 'select option' do
  scenario 'player has selected one option' do
    visit('/')
    expect(page).to have_content 'Enter your name'
    fill_in :player_name, with: 'Marie'
    click_button 'Play'
    choose(option: 'Scissors')
    click_button 'Play'
    expect(page).to have_content 'Marie choose Scissors'
  end
end
