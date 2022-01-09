feature 'Select option' do 
  scenario 'player selects rock and it is confirmed' do 
    gamebot_bob_play
    click_button "ROCK"
    expect(page).to have_content "ROCK"
  end

  scenario 'player selects paper and it is confirmed' do 
    gamebot_bob_play
    click_button "PAPER"
    expect(page).to have_content "PAPER"
  end

  scenario 'player selects scissors and it is confirmed' do 
    gamebot_bob_play
    click_button "SCISSORS"
    expect(page).to have_content "SCISSORS"
  end
end