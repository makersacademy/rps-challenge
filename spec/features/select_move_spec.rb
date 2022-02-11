feature 'select move' do
  scenario 'when you select Rock it should present your choice' do
    register_to_play
    click_button 'Start Game'
    click_button 'Rock'
    expect(page).to have_content "Ben, you selected Rock"
  end

  scenario 'when you select Paper it should present your choice' do
    register_to_play
    click_button 'Start Game'
    click_button 'Paper'
    expect(page).to have_content "Ben, you selected Paper"
  end

  scenario 'when you select Scissort it should present your choice' do
    register_to_play
    click_button 'Start Game'
    click_button 'Scissors'
    expect(page).to have_content "Ben, you selected Scissors"
  end
end