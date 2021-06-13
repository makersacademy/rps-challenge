feature 'Multiplayer' do
  background do
    enter_names_and_start_multiplayer
    click_button 'Rock!'
  end

  scenario 'Player 2 can enter name' do
    expect(page).to have_content 'Welcome, Pizza!'
  end

  scenario 'Player 2 can pick rock' do
    click_button 'Rock!'
    expect(page).to have_content 'Pizza picked rock.'
  end

  scenario 'Player 2 can pick paper' do
    click_button 'Paper!'
    expect(page).to have_content 'Pizza picked paper.'
  end

  scenario 'Player 2 can pick Scissors' do
    click_button 'Scissors!'
    expect(page).to have_content 'Pizza picked scissors.'
  end

  scenario 'Player 2 wins against Player 1' do
    click_button 'Paper!'
    expect(page).not_to have_content 'Halloumi wins!'
    expect(page).to have_content 'Pizza wins!'
  end

  scenario 'Player 2 loses against Player 1' do
    click_button 'Scissors!'
    expect(page).not_to have_content 'Pizza wins!'
    expect(page).to have_content 'Halloumi wins!'
  end

  scenario 'Player 2 draws with Player 1' do
    click_button 'Rock!'
    expect(page).not_to have_content 'Halloumi wins!'
    expect(page).not_to have_content 'Pizza wins!'
    expect(page).to have_content "It's a draw!"
  end
end
