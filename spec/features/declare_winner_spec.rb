feature 'declare winner' do

  scenario 'player1 wins' do
    register
    chose_rock
    register_2
    chose_scissors
    expect(page).to have_content 'Pikachu Wins!'
  end

  scenario 'player2 wins' do
    register
    chose_paper
    register_2
    chose_scissors
    expect(page).to have_content 'Snorlax Wins!'
  end

  scenario 'draw' do
    register
    chose_scissors
    register_2
    chose_scissors
    expect(page).to have_content 'Draw!'
  end
end
