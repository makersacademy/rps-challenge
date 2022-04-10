feature 'displaying results' do
  scenario 'rock choice' do
    one_player_chooses_rock
    expect(page).to have_content 'Mika chose Rock'
  end
  scenario 'paper choice' do
    one_player_start
    click_button 'Paper'
    expect(page).to have_content 'Mika chose Paper'
  end
  scenario 'scissors choice' do
    one_player_start
    click_button 'Scissors'
    expect(page).to have_content 'Mika chose Scissors'
  end
  scenario 'computer choice displayed' do
    one_player_chooses_rock
    expect(page).to have_content 'and The Computer chose'
  end
  scenario 'winner' do
    player_one_rock_and_player_two_paper
    expect(page).to have_content 'And the winner is...'
    expect(page).to have_content 'AMP!'
    expect(page).not_to have_content 'MIKA!'
  end
  scenario 'option to start over' do
    one_player_chooses_rock
    find_button('Play again?').click
  end

end