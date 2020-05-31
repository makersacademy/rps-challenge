# frozen_string_literal: true

feature 'Infrastructure Test' do
  scenario 'Displays welcome message' do
    visit('/')
    expect(page).to have_content('Welcome to Rock Paper Scissors')
  end

  scenario 'Displays player name entered into form' do
    sign_in_to_game
    expect(page).to have_content('Jacko vs Computer Player')
  end

  scenario 'Displays the start game button' do
    sign_in_to_game
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end

  scenario 'Displays the games result' do
    sign_in_to_game
    click_button('Rock')
    expect(page).to have_content('Game Over:')
  end
end
