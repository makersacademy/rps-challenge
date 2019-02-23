feature 'Selecting a game move (ROCK, PAPER, or SCISSORS)' do

  scenario 'Player selects ROCK' do
    visit '/'
    fill_in 'player1_name', with: 'Ozzy Osbourne'
    click_button 'Play'
    click_button 'ROCK'
    expect(page).to have_content 'ROCK'
  end

  scenario 'Player selects PAPER' do
    visit '/'
    fill_in 'player1_name', with: 'Ozzy Osbourne'
    click_button 'Play'
    click_button 'PAPER'
    expect(page).to have_content 'PAPER'
  end

  scenario 'Player selects SCISSORS' do
    visit '/'
    fill_in 'player1_name', with: 'Ozzy Osbourne'
    click_button 'Play'
    click_button 'SCISSORS'
    expect(page).to have_content 'SCISSORS'
  end

end
