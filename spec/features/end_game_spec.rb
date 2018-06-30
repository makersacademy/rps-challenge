feature 'game ends' do
  scenario 'best of 3, shows winner after 3 rounds' do
    sign_in
    click_button 'Rock'
    click_button 'Next Round'
    click_button 'Rock'
    expect(page).to have_content 'Daniel wins 2 0!'
  end
end

feature 'start new game' do
  scenario 'option to start a new game once it has ended' do
    sign_in
    click_button 'Scissors'
    click_button 'Next Round'
    click_button 'Paper'
    click_button 'New Game?'
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors!'
  end
end
