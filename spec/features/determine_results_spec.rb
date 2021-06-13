feature 'Determine results' do
  background do
    enter_name_and_start_game
  end

  scenario 'Player 1 wins' do
    srand(3)
    click_button 'Rock!'
    expect(page).not_to have_content 'CPU wins!'
    expect(page).to have_content 'Halloumi wins!'
  end

  scenario 'Player 2 wins' do
    srand(1)
    click_button 'Rock!'
    expect(page).not_to have_content 'Halloumi wins!'
    expect(page).to have_content 'CPU wins!'
  end

  scenario 'Draw' do
    srand(2)
    click_button 'Rock!'
    expect(page).not_to have_content 'CPU wins!'
    expect(page).not_to have_content 'Halloumi wins!'
    expect(page).to have_content "It's a draw!"
  end
end
