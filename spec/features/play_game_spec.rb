feature "playing Rps" do

  scenario 'see rock, paper, scissor choices on page' do
    enter_name_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'can see which they chose' do
    # player1's selection is shown on play page
    enter_name_and_play
    click_button 'Rock'
    expect(page).to have_content('You chose Rock')
  end

  scenario 'game chooses Paper' do
    srand(2541)
    enter_name_and_play
    click_button 'Rock'
    expect(page).to have_content('Game chose Paper')
  end

  scenario 'game chooses randomly' do
    srand(2541)
    enter_name_and_play
    click_button 'Rock'
    expect(page).to have_content('Game chose Paper')
  end

  xscenario 'Player 1 wins' do
    enter_name_and_play
    click_button 'Rock'
    expect(page).to have_content('You win!')
  end
end



# def possible_choices
#   "Game chose Rock"
#   "Game chose Paper"
#   "Game chose Scissors"
# end
