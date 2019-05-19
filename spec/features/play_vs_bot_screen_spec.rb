feature 'bot game page content' do
  scenario 'checks the players and scores written' do
    select_bot
    enter_player_click_choose_game
    click_button 'Rock Paper Scissors'
    expect(page).to have_content 'Ollie 0 Bot 0'
  end

  scenario 'checks for rock, paper and scissor buttons' do
    select_bot
    enter_player_click_choose_game
    click_button 'Rock Paper Scissors'
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
end
