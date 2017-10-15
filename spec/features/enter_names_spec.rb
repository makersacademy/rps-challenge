require_relative '../../app.rb'

feature 'Player chooses number of players' do
  scenario 'Player can choose single player' do
    visit('/')
    click_button 'Single Player'
    expect(page).to have_content('Please enter your name')

    # fill_in :player1, with: 'Tom'
    # click_button 'Submit'
    # expect(page).to have_content('Hello Tom')
  end
end
