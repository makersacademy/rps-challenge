feature 'Computer selects' do 
  scenario 'selction is confirmed' do
    gamebot_bob_play
    click_button "ROCK"
    expect(page).to have_content "GameBot picked:"
  end
end