feature 'Win or lose or draw' do

  scenario 'Choosing a weapon and winning' do
    sign_in
    allow(Random).to receive(:rand){1}
    click_button('ROCK')
    expect(page).to have_content('Huge congratulations. You WIN.')
  end

  scenario 'Choosing a weapon and losing' do
    sign_in
    allow(Random).to receive(:rand){1}
    click_button('PAPER')
    expect(page).to have_content('Commiserations. You LOSE')
  end

  scenario 'Choosing a weapon and drawing' do
    sign_in
    allow(Random).to receive(:rand){1}
    click_button('SCISSORS')
    expect(page).to have_content('Dull but fair. It\'s a draw.')
  end

end