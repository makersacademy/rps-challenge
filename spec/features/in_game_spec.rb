
feature 'In-game' do
  before do
    log_in
  end

  scenario 'User is presented with weapon choices' do
    log_in
    expect(page).to have_button 'ROCK'
    expect(page).to have_button 'PAPER'
    expect(page).to have_button 'SCISSORS'
  end

  scenario 'User is able to select Rock' do
    log_in
    click_button('ROCK')
    expect(page).to have_content 'Weapon Choice: ROCK?'
  end

  scenario 'User is able to select Paper' do
    log_in
    click_button('PAPER')
    expect(page).to have_content 'Weapon Choice: PAPER?'
  end

  scenario 'User is able to select Scissors' do
    log_in
    click_button('SCISSORS')
    expect(page).to have_content 'Weapon Choice: SCISSORS?'
  end

  scenario 'Game chooses Rock' do
    click
  end














end
