feature 'Restart' do
	
  scenario 'Finishing a singles game and going back to play a new game with a different outcome' do
    sign_in_single
    allow(Random).to receive(:rand){0}
    click_button('ROCK')
    click_button('AGAIN AGAIN')
    allow(Random).to receive(:rand){1}
    click_button('PAPER')
    expect(page).to have_content("Huge congratulations to THE MACHINE - the WINNER.")
  end

  scenario 'Finishing a doubles game and going back to play a new game with a different outcome' do
    sign_in_double
    click_button('ROCK')
    click_button('ROCK')
    click_button('AGAIN AGAIN')
    click_button('ROCK')
    click_button('PAPER')
    expect(page).to have_content("Huge congratulations to Laura - the WINNER.")
  end

end