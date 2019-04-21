feature 'declare winner' do

  scenario 'player1 wins' do
    # Change the driver to selenium to show dynamic
    Capybara.current_driver = :selenium
    visit('/')
    fill_in('player_name', with: 'Pikachu')
    click_button('Submit')
    chose_rock

    new_window = open_new_window
    within_window new_window do
      visit('/')
      fill_in('player_name', with: 'Snorlax')
      click_button('Submit')
      chose_scissors
      expect(page).to have_content 'Pikachu Wins!'
    end
    Capybara.use_default_driver
  end

  scenario 'player2 wins' do
    register
    chose_paper
    register_2
    chose_scissors
    expect(page).to have_content 'Snorlax Wins!'
  end

  scenario 'draw' do
    register
    chose_scissors
    register_2
    chose_scissors
    expect(page).to have_content 'Draw!'
  end
end
