feature 'submits players move' do
  scenario "player selects 'rock'" do
    visit '/'
    fill_in :player_name, with: 'Rianne'
    click_button 'Submit'
    visit '/play'
    click_button 'Rock'
    expect(page).to have_content "Rianne selected Rock"
  end
end
