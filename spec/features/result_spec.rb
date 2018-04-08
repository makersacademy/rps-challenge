feature 'result shown' do
  scenario 'Can see the player\'s move on screen' do
    sign_in_and_play
    fill_in 'choice', with: 'rock'
    click_button 'Go!'
    click_button 'Proceed'
    expect(page).to have_content 'Player move: rock'
  end

  scenario 'Can see both the player and the computers moves' do
    allow(@game).to receive(:computer_move).and_return(:paper)
    sign_in_and_play
    fill_in 'choice', with: 'rock'
    click_button 'Go!'
    click_button 'Proceed'
    expect(page).to have_content 'Player move: rock -------- Computer move: paper'
  end
end
