feature 'Play Game' do
  scenario 'choosing rock gesture' do
    submit_name_and_play('Rock')

    expect(page).to have_content('Matt chose: rock')
  end

  scenario 'choosing paper gesture' do
    submit_name_and_play('Paper')

    expect(page).to have_content('Matt chose: paper')
  end

  scenario 'choosing scissors gesture' do
    submit_name_and_play('scissors')

    expect(page).to have_content('Matt chose: scissors')
  end

  scenario 'winning game' do
    mock_computer_with('scissors')
    submit_name_and_play('rock')

    expect(page).to have_content('You Win!!')
  end

  scenario 'losing game' do
    mock_computer_with('paper')
    submit_name_and_play('rock')

    expect(page).to have_content('You Lose')
  end

  scenario 'drawing game' do
    mock_computer_with('rock')
    submit_name_and_play('rock')

    expect(page).to have_content('Its a Draw!')
  end

  scenario 'playing again' do
    mock_computer_with('rock')
    submit_name_and_play('scissors')
    click_link('Play again')
    choose('paper')
    click_button('Submit')

    expect(page).to have_content('You Win!!')
  end
end
