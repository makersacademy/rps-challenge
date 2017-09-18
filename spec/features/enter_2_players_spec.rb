feature 'Enter two players' do
  scenario 'run check two players entered in game' do
    sign_in_2
    expect(page).to have_content 'THOMAS'
    fill_in :player_1_choice, with: 'rock'
    click_button 'ENTER CHOICE'
    expect(page).to have_content 'ZOE'
  end
end
