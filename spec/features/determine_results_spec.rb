feature 'results' do
  background do
    enter_name_and_start_game
  end

  scenario 'Player 1 wins' do
    srand(3)
    click_button 'Rock!'

    expect(page).to have_content 'Halloumi wins!'
  end

  scenario 'Player 2 wins' do
    srand(1)
    click_button 'Rock!'

    expect(page).to have_content 'CPU wins!'
  end
end