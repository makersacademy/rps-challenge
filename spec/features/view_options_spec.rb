feature 'View options' do
  scenario 'player can view rock option' do
    gamebot_bob_play
    click_button "ROCK"
    expect(page).to have_content "ROCK"
  end

  scenario 'player can view paper option' do
    gamebot_bob_play
    click_button "PAPER"
    expect(page).to have_content "PAPER"
  end

  scenario 'player can view scissors option' do
    gamebot_bob_play
    click_button "SCISSORS"
    expect(page).to have_content "SCISSORS"
  end
end