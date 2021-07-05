feature 'submits players move' do
  scenario "player selects 'rock'" do
    sign_in_and_confirm
    click_button 'Rock'
    expect(page).to have_content "Rianne selected Rock"
  end
end
