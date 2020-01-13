feature 'Playing RPS game' do
  scenario 'gives player confirmation of chosen move' do
    visit '/'
    fill_in :player_name, with: 'Masha'
    click_button 'Submit'
    choose("move", with: "Paper")
    click_button 'Submit'
    expect(page).to have_content "Your move: Paper"
  end
end
