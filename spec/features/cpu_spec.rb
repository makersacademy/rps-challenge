feature 'player vs game' do
  scenario 'confirming player choice and the game to choose its choice' do
    sign_in_and_play
    fill_in :weapon, with: 'rock'
    click_button 'submit'
    expect(page).to have_content "karho's choice rock"
  end

  scenario 'player enters wrong selection' do
    sign_in_and_play
    fill_in :weapon, with: 'pie'
    click_button
    expect(page).to have_content "THAT IS NOT A WEAPON!"
  end
end
