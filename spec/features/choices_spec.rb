feature 'chosing rock, paper or scissors' do
  scenario 'player chooses move' do
    visit('/')
    fill_in :player_1_name, with: 'Mark'
    click_button 'Create player!'
    click_button 'Rock'
    expect(page).to have_content "Mark shows Rock"
  end
end
