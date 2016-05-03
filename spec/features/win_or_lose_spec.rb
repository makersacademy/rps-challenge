feature 'Win or lose or draw' do

  scenario 'Choosing a weapon and winning' do
    sign_in_single
    allow(Random).to receive(:rand){1}
    click_button('ROCK')
    expect(page).to have_content('Huge congratulations to Ollie - the WINNER.')
  end

  scenario 'Choosing a weapon and losing' do
    sign_in_single
    allow(Random).to receive(:rand){1}
    click_button('PAPER')
    expect(page).to have_content('Huge congratulations to THE MACHINE - the WINNER')
  end

  scenario 'Choosing a weapon and drawing' do
    sign_in_single
    allow(Random).to receive(:rand){1}
    click_button('SCISSORS')
    expect(page).to have_content('Dull but fair. It\'s a draw.')
  end

end