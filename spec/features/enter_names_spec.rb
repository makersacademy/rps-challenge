require_relative '../../app.rb'

feature 'Player chooses number of players' do
  scenario 'Player can choose single player' do
    visit('/')
    click_button 'single_player'
    expect(page).to have_content('Please enter your name')
  end
end
