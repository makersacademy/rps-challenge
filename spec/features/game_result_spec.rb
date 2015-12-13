feature 'result' do
  scenario 'has restart option' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'Restart'
  end

  scenario 'has try again option' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'Try again?'
  end

  scenario 'can restart' do
    sign_in_and_play
    click_button 'rock'
    click_link 'Restart'
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'can try again' do
    sign_in_and_play
    click_button 'rock'
    click_link 'Try again?'
    expect(page).to have_content 'Gareth vs. Computer'
  end

end
