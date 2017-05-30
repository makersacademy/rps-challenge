
feature 'In game' do
  before do
    log_in
  end

  scenario 'User is presented with weapon choices' do
    expect(page).to have_button 'ROCK'
    expect(page).to have_button 'PAPER'
    expect(page).to have_button 'SCISSORS'
  end

  scenario 'User is able to select Rock' do
    click_button('ROCK')
    expect(page).to have_content 'Player Choice: ROCK'
  end

  scenario 'User is able to select Paper' do
    click_button('PAPER')
    expect(page).to have_content 'Player Choice: PAPER'
  end

  scenario 'User is able to select Scissors' do
    click_button('SCISSORS')
    expect(page).to have_content 'Player Choice: SCISSORS'
  end

end
