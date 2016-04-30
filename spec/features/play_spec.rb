feature 'Report' do
	
  scenario 'Choosing a weapon and seeing the computer\'s choice' do
    sign_in
    allow(Random).to receive(:rand){1}
    click_button('ROCK')
    expect(page).to have_content('The computer chose SCISSORS.')
  end

  scenario 'Choosing a weapon and seeing your own choice' do
    sign_in
    allow(Random).to receive(:rand){1}
    click_button('ROCK')
    expect(page).to have_content('You chose ROCK.')
  end

end