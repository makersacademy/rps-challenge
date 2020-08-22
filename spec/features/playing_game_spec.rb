
feature 'Playing the game' do
  scenario 'player and cpu pick' do
    enter_name_and_play
    click_button('Rock')
    expect(page).to have_content('JS: Rock vs Rock :CPU')
  end
end