feature 'Game over' do
  scenario 'finishing a game' do
    sign_in_and_play
    move_selection
    expect(page).to have_content 'You win!!'
  end

  scenario 'keeping score' do
    sign_in_and_play
    move_selection
    expect(page).to have_content 'Player: 1'
    expect(page).to have_content 'Computer: 0'
  end
end
