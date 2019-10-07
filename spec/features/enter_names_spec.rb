feature 'Enter names' do
  scenario 'Registration page' do
    visit('/')

    expect(page).to have_content 'Play Rock Paper Scissors'
  end

  scenario 'submitting names' do
    start_game
    expect(page).to have_content 'Welcome Sherif, let\'s start'
  end

  scenario 'playing choices available' do
    start_game
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'confirming player\'s choice' do
    start_game
    click_button 'Paper'
    expect(page).to have_content 'Thanks'
  end
end
