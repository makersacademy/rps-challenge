feature 'play the game' do

  scenario 'the choices (rock, paper, scissors) are presented' do
    register_and_play
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

end
