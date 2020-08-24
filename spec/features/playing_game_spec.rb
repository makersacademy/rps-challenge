
feature 'Playing the game' do
  scenario 'player and cpu pick' do
    srand(30)
    enter_name_and_play
    click_button('Rock')
    expect(page).to have_content('JS: Rock vs Paper :CPU')
  end
end