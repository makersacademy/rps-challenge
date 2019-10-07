feature 'chooses game' do

  scenario 'checks that the players are written on the page' do
    select_bot
    enter_player_click_choose_game
    expect(page).to have_content("Ollie vs. Bot")
  end

  scenario 'checks that the players are written on the page' do
    select_live_opponent
    enter_players_click_choose_game
    expect(page).to have_content("Ollie vs. Dave")
  end

  scenario 'checks that there are two game options' do
    select_bot
    enter_player_click_choose_game
    expect(page).to have_selector(:link_or_button, 'Rock Paper Scissors')
    expect(page).to have_selector(:link_or_button, 'Rock Paper Scissors Spock Lizard')
  end

  scenario 'checks that there are two game options' do
    select_live_opponent
    enter_players_click_choose_game
    expect(page).to have_selector(:link_or_button, 'Rock Paper Scissors')
    expect(page).to have_selector(:link_or_button, 'Rock Paper Scissors Spock Lizard')
  end
end
