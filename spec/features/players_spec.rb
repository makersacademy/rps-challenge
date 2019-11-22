feature 'players' do
  scenario 'entering the name of the players' do
    visit '/'
    fill_in :player_1_name, with: 'Rebecca'
    click_button 'Submit'
    expect(page).to have_content "Welcome to the game Rebecca"
  end
end
