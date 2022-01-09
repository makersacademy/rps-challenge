feature 'Play a game of rock/paper/scissors' do
  scenario 'Selecting rock' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content('Sarah picked rock')
  end

  scenario 'Selecting paper' do
    sign_in_and_play
    click_button('paper')
    expect(page).to have_content('Sarah picked paper')
  end

  scenario 'Selecting scissors' do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content('Sarah picked scissors')
  end
end