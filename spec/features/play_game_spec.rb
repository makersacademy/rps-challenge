
feature 'starting the game' do

  scenario 'the player decides to play' do

    visit('/')
    fill_in :player_one, with: "S.Z."
    click_button 'play'
    click_button 'paper'
    expect(page).to have_content "S.Z. move:"

  end

  scenario 'the player decides to play' do

    visit('/')
    fill_in :player_one, with: "S.Z."
    click_button 'play'
    click_button 'paper'
    expect(page).to have_content "CPU move:"

  end

end
