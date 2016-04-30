feature 'Accepts player name' do
  scenario 'Enter name' do
    enter_player_name
    expect(page).to have_content('Macey Forever')
  end
end
