feature 'allows user to input name' do
  scenario 'expect to see username on game start' do
    single_player
    expect(page).to have_content('James')
  end
end

feature 'when the computer chooses scissors, user should win, lose or draw' do
  scenario 'user wins upon choosing rock' do
    single_player
    click_button('Rock')
    expect(page).to have_content('YOU WIN!')
  end
  scenario 'user loses upon choosing paper' do
    single_player
    click_button('Paper')
    expect(page).to have_content('YOU LOSE')
  end
  scenario 'user draws upon choosing scissors' do
    single_player
    click_button('Scissors')
    expect(page).to have_content('ITS A DRAW...')
  end
end
