feature 'play' do
  scenario 'the player is presented a choice and chooses rock' do
    sign_in_and_play
    expect(page).to have_selector(:button, "Rock")
  end
  scenario 'the player is presented a choice and chooses paper' do
    sign_in_and_play
    expect(page).to have_selector(:button, "Paper")
  end
  scenario 'the player is presented a choice and chooses scissors' do
    sign_in_and_play
    expect(page).to have_selector(:button, "Scissors")
  end
  scenario 'after the player chooses, their choice is displayed' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("John: Rock")
  end
end
