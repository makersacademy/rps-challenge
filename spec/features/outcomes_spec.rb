feature 'Game outcomes' do
  scenario 'when I lose, I should get told it' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    single_player_login
    choose 'Rock'
    click_button 'Play!'
    expect(page).to have_content 'The victor is The Computer'
  end

  scenario 'when I win, I should get told it' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    single_player_login
    choose 'Paper'
    click_button 'Play!'
    expect(page).to have_content 'The victor is Michael'
  end

  scenario 'when I draw, I should get told it' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    single_player_login
    choose 'Scissors'
    click_button 'Play!'
    expect(page).to have_content 'a draw'
  end
end
