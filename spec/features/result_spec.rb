feature 'show results of the game' do
  before do
    register_and_play
    srand(2)
  end
  scenario 'you win' do
    click_button 'paper'
    expect(page).to have_content('Han won')
  end
  scenario 'you lost' do
    click_button 'scissors'
    expect(page).to have_content('Han lost')
  end
  scenario 'you drew' do
    click_button 'rock'
    expect(page).to have_content('Han drew')
  end

  scenario 'can return to start of game' do
    click_button 'rock'
    expect(page).to have_button('New Game')
  end

  scenario 'can rematch' do
    click_button 'rock'
    expect(page).to have_button('Rematch')
  end
end
