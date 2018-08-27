feature 'End of a game' do
  scenario 'Can play again' do
    sign_in
    click_button 'ROCK'
    click_button 'PLAY AGAIN'
    expect(page).to have_content 'Welcome Jimmy!'
  end

  scenario 'Can restart' do
    sign_in
    click_button 'ROCK'
    click_button 'RESTART'
    expect(page).to have_content 'Please enter your name:'
  end
end
