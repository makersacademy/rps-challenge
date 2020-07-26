feature 'player 1 throw confirmation' do
  scenario 'confirmation of throw choice displayed' do
    visit '/'
    fill_in :player_1_name, with: 'Nayr'
    click_button 'Submit'
    click_button "Rock!"
    expect(page).to have_content "Nayr chose to throw Rock!"
  end
end
