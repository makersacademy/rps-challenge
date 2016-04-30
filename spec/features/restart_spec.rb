feature 'Restart' do
	
  scenario 'Finishing a game and going back to play a new game with a different outcome' do
    sign_in
    allow(Random).to receive(:rand){0}
    click_button('ROCK')
    click_button('AGAIN AGAIN')
    allow(Random).to receive(:rand){1}
    click_button('PAPER')
    expect(page).to have_content('Commiserations. You LOSE')
  end

end