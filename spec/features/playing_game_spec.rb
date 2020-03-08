feature 'playing game' do
  scenario 'see list of shapes' do
    sign_in_and_play
    expect(page).to have_button 'ROCK'
    expect(page).to have_button 'PAPER'
    expect(page).to have_button 'SCISSORS'
  end

  scenario 'you can choose ROCK' do
    sign_in_and_play
    click_button 'ROCK'
    expect(page).to have_content 'You chose ROCK'
  end

  scenario 'you can choose PAPER' do
    sign_in_and_play
    click_button 'PAPER'
    expect(page).to have_content 'You chose PAPER'
  end

  scenario 'you can choose SCISSORS' do
    sign_in_and_play
    click_button 'SCISSORS'
    expect(page).to have_content 'You chose SCISSORS'
  end

  scenario 'shows computers choice' do
    sign_in_and_play
    click_button 'SCISSORS'
    srand(0)
    expect(page).to have_content 'Computer chose PAPER'
  end
end