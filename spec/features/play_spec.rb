feature 'Report' do
	
  scenario 'Choosing a weapon and seeing the computer\'s choice' do
    sign_in_single
    allow(Random).to receive(:rand){1}
    click_button('ROCK')
    expect(page).to have_content('THE MACHINE chose SCISSORS.')
  end

  scenario 'Choosing a weapon and seeing your own choice' do
    sign_in_single
    allow(Random).to receive(:rand){1}
    click_button('ROCK')
    expect(page).to have_content('Ollie chose ROCK.')
  end

  scenario 'Player1 chooses a weapon then player2 is asked to choose their weapon' do
    sign_in_double
    click_button('ROCK')
    expect(page).to have_content('Ok Laura, pick your weapon')
  end

end