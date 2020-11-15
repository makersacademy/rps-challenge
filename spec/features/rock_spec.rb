feature 'Player chooses rock' do
  scenario 'Player can choose rock' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
  end

  scenario 'Player chooses rock and wins' do
    srand(67809)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Matt wins!'
    expect(page).to have_button 'Play again?'
    expect(page).to have_button 'New Player'
  end

  scenario 'Player chooses rock and draws' do
    srand(67810)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Matt & AI drew!'
    expect(page).to have_button 'Play again?'
    expect(page).to have_button 'New Player'
  end

  scenario 'Player choose rock and loses' do
    srand(67814)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Matt lost to an AI!'
    expect(page).to have_button 'Play again?'
    expect(page).to have_button 'New Player'
  end
end
