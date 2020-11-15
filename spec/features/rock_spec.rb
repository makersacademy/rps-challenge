feature 'Player chooses rock' do
  scenario 'Player can choose rock' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
  end

  scenario 'Player chooses rock and wins' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Matt wins!'
  end
end
