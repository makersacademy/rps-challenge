feature 'Playing a game' do
  scenario 'when playing a game 1P and 2P options are available' do
    visit '/'
    expect(page).to have_selector("input#game_option_id")
  end
  scenario 'when playing a game HP are available' do
    register_process
    expect(page).to have_text("HP")
  end

  scenario 'rock option available' do
    register_process
    expect(page).to have_selector("input#rock_button_id")
  end

  scenario 'choosing rock option' do
    register_process_2P_game
    click_button('ROCK')
    click_button('ROCK')
    expect(page).to have_text("You choosed ROCK")
  end
end
