feature 'welcome page' do 
  scenario 'entering a player name displays it on a welcome page' do
    visit('/')
    click_button('1')
    fill_in 'player1_name', with: 'Marketer 1'
    click_button('Confirm Names')
    expect(page).to have_content 'Hello Marketer 1'
    Game.instance.reset
  end
  scenario 'playing as a single player causes a computer controleld player to be generated' do
    visit('/')
    click_button('1')
    fill_in 'player1_name', with: 'Marketer 1'
    click_button('Confirm Names')
    expect(page).to have_content 'You are playing against the Computer'
    Game.instance.reset
  end
end
