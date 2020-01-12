feature 'Player Selects Move' do
  scenario 'Player chooses rock' do
    sign_in_and_play
    click_button 'ROCK'
    expect(page).to have_content 'NAME1: ROCK'
  end

  scenario 'Player chooses paper' do
    sign_in_and_play
    click_button 'PAPER'
    expect(page).to have_content 'NAME1: PAPER'
  end

  scenario 'Player chooses rock' do
    sign_in_and_play
    click_button 'SCISSORS'
    expect(page).to have_content 'NAME1: SCISSORS'
  end
end
