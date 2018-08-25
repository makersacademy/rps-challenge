feature 'player vs game' do
  scenario 'confirming player choice and the game to choose its choice' do
    sign_in_and_play
    fill_in :weapon, with: 'rock'
    click_button 'submit'
    expect(page).to have_content "karho's choice rock"
    click_link 'go ahead!'
  end
end
