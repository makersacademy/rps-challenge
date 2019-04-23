feature 'sign-in process' do
  scenario 'pressing button redirects to the game' do
    visit '/game'
    click_button "Rock"
    click_button "Play Again"
    expect(page).to have_content "Please choose one of the options."
  end
end
