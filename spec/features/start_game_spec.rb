feature 'Start game' do
  scenario 'player continues to start game' do
    enter_name_and_start_game
    expect(page).to have_content "Sam, Welcome to Rock Paper Scissors Game!"
  end
end
