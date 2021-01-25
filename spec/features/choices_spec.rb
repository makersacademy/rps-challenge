feature 'chosing rock, paper or scissors' do
  scenario 'player chooses move' do
    create_player
    click_button 'Rock'
    expect(page).to have_content "Mark shows Rock"
  end
end
