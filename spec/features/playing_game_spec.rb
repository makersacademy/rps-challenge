feature 'Playing RPS game' do
  scenario 'gives player confirmation of chosen move' do
    visit '/'
    fill_in :player_name, with: 'Masha'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content "Your chosen move: Paper"
  end
end
