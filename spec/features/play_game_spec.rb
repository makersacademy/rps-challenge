
feature 'starting the game' do

  scenario 'the player decides to play' do

    visit('/')
    fill_in :player_one, with: "Steve Zissou"
    click_button 'play'
    click_button 'paper'
    expect(page).to have_content "Steve Zissou move:"

  end

  scenario 'the player decides to play' do

    visit('/')
    fill_in :player_one, with: "Steve Zissou"
    click_button 'play'
    click_button 'paper'
    expect(page).to have_content "Robot move:"

  end

end
