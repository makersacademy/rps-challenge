feature 'Enter names' do
  scenario 'Player can input and submit a name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome to the game Jara'
  end
end

feature 'Choose moves' do
  scenario 'Player can choose between three buttons' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Scissors'
    expect(page).to have_button 'Paper'
  end
end

feature "See result" do
  scenario 'I can see my choice' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'You chose Scissors'
  end

  scenario 'I can see my oponent choice' do
    sign_in_and_play
    srand(0)
    click_button 'Rock'
    expect(page).to have_content 'and your oponent chose Scissors'
  end

  scenario 'You win' do
    sign_in_and_play
    srand(0)
    click_button 'Rock'
    expect(page).to have_content 'You win!'
  end

  scenario 'You lose' do
    sign_in_and_play
    srand(0)
    click_button 'Paper'
    expect(page).to have_content 'You lost!'
  end

  scenario 'Its a draw' do
    sign_in_and_play
    srand(0)
    click_button 'Scissors'
    expect(page).to have_content "It's a draw!"
  end

  scenario 'I can go back and play again' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_button 'Play Again'
  end
end
