feature 'play the game' do

  scenario 'the choices (rock, paper, scissors) are presented' do
    register_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

end
