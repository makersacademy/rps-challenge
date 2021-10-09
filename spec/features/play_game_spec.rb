feature 'Play Game' do
  scenario 'choosing rock gesture' do
    submit_name_and_play('Rock')

    expect(page).to have_content('You chose: rock')
  end

  scenario 'choosing paper gesture' do
    submit_name_and_play('Paper')

    expect(page).to have_content('You chose: paper')
  end

  scenario 'choosing scissors gesture' do
    submit_name_and_play('Scissors')

    expect(page).to have_content('You chose: scissors')
  end
end
