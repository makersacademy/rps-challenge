feature 'Playing RPS game' do
  scenario 'gives player confirmation of chosen move' do
    sign_in_and_play
    choose("move", with: "Paper")
    click_button 'Submit'
    expect(page).to have_content "Your move: Paper"
  end
end
