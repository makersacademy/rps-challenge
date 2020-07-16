feature 'Play again' do
  scenario 'User can play again' do
    sign_in
    click_button 'scissors'
    expect(page).to have_button 'Play Again'
    click_button 'Play Again'
    expect(page).to have_content 'Welcome Catriona!'
  end

  scenario 'User can play again as someone else' do
    sign_in
    click_button 'scissors'
    expect(page).to have_button 'Start Again'
    click_button 'Start Again'
    expect(page).to have_content 'Rock, Paper, Scissors!'
  end
end
