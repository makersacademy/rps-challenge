feature 'The welcome message disappears when the game starts' do
  scenario 'starting the game' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).not_to have_content("Ready to play, Batwoman?")
  end
end
