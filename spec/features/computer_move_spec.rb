feature 'Computer move' do
  scenario 'shows computer counter-move' do
    start_playing
    choose_rock
    allow($game).to receive(:computer_move).and_return("paper")
    expect(page).to have_content "Computer chooses #{$game.computer_move}"
  end
end