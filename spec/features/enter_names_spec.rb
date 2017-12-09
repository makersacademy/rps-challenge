feature 'entering player names' do

  scenario 'a player can enter their name in a form' do
    visit '/'
    click_button 'Play!'
    fill_in :player_name, with: 'Player'
    click_on 'Submit'
    expect(page).to have_content 'Player vs. Computer'
  end

end
