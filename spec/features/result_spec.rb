feature 'Game Result' do
  scenario 'Player wins' do
    allow_any_instance_of(Computer).to receive(:weapon_choice).and_return(:scissors)
    sign_in_and_play
    click_button 'Choose!'
    click_button 'OK'
    expect(page).to have_content 'Congratulations, you win!'
  end

  scenario 'Player loses' do
    allow_any_instance_of(Computer).to receive(:weapon_choice).and_return(:paper)
    sign_in_and_play
    click_button 'Choose!'
    click_button 'OK'
    expect(page).to have_content 'Bad luck, you lose!'
  end

  scenario 'A draw' do
    allow_any_instance_of(Computer).to receive(:weapon_choice).and_return(:rock)
    sign_in_and_play
    click_button 'Choose!'
    click_button 'OK'
    expect(page).to have_content 'It\'s a draw!'
  end
end
