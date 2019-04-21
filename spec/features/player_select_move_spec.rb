feature 'Player Selects Move (ROCK, PAPER, or SCISSORS)' do

  scenario 'Player selects ROCK' do
    sign_in_and_click_play
    click_button 'ROCK'
    expect(page).to have_content 'ROCK'
  end

  scenario 'Player selects PAPER' do
    sign_in_and_click_play
    click_button 'PAPER'
    expect(page).to have_content 'PAPER'
  end

  scenario 'Player selects SCISSORS' do
    sign_in_and_click_play
    click_button 'SCISSORS'
    expect(page).to have_content 'SCISSORS'
  end

end
