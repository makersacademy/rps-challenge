feature 'Winner declared' do
  scenario 'Player chooses Rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Cinderella chose Rock'
  end

  scenario 'Bot chooses Rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Bot chose Rock'
  end

  scenario 'Player chooses Paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Cinderella chose Paper'
  end

  scenario 'Bot chooses Paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Bot chose Paper'
  end

  scenario 'Player chooses Scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Cinderella chose Scissors'
  end

  scenario 'Bot chooses Scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Bot chose Scissors'
  end

  scenario 'Player wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Cinderella wins!'
  end

  scenario 'Player loses' do
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Bot wins!'
  end

  scenario 'Player draws' do
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'It\'s a draw!'
  end

  scenario 'Can play again' do
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_button 'Play again'
  end

  scenario 'Can start a new game' do
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    sign_in_and_play
    click_button 'Rock'
    click_button 'Play again'
    expect(page).to have_content 'Enter your name to play'
  end
end
