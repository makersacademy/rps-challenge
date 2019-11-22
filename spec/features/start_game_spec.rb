feature 'Start game' do
  scenario 'player start game' do
    enter_name_and_start_game
    expect(page).to have_content "Players,Are you ready!"
  end
end
