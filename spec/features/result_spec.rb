feature 'player vs game' do
  scenario 'confirming player choice and the game to choose its choice' do
    sign_in_and_play
    fill_in :weapon, with: 'rock'
    click_button 'submit'
    expect(page).to have_content "karho's choice rock"
    click_link 'go ahead!'
  end

  scenario 'play the game' do
    sign_in_and_play
    fill_in :weapon, with: 'rock'
    click_button 'submit'
    click_link 'go ahead!'
    expect(page).to have_content "computer's weapon is:"
  end

  scenario 'can play after after' do
    sign_in_and_play
    fill_in :weapon, with: 'rock'
    click_button 'submit'
    click_link 'go ahead!'
    click_link 'play again'
    expect(page).to have_content "karho please choose your weapon: rock, paper, or scissors"
  end

end
