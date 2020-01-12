feature 'shows result' do
  scenario 'player choose rock and wins vs scissor' do
    log_in
    choose(option: 'rock')
    allow(RpsGame::MOVES).to receive(:sample) { 'scissor' }
    click_button 'Play!'
    expect(page).to have_content 'Umberto wins!'
  end

  scenario 'player choose rock and draws vs rock' do
    log_in
    choose(option: 'rock')
    allow(RpsGame::MOVES).to receive(:sample) { 'rock' }
    click_button 'Play!'
    expect(page).to have_content 'No winners, you draw!'
  end

  scenario 'player choose rock and loses vs paper' do
    log_in
    choose(option: 'rock')
    allow(RpsGame::MOVES).to receive(:sample) { 'paper' }
    click_button 'Play!'
    expect(page).to have_content 'Computer wins!'
  end

  scenario 'player choose paper and wins vs rock' do
    log_in
    choose(option: 'paper')
    allow(RpsGame::MOVES).to receive(:sample) { 'rock' }
    click_button 'Play!'
    expect(page).to have_content 'Umberto wins!'
  end

  scenario 'player choose paper and draws vs paper' do
    log_in
    choose(option: 'paper')
    allow(RpsGame::MOVES).to receive(:sample) { 'paper' }
    click_button 'Play!'
    expect(page).to have_content 'No winners, you draw!'
  end

  scenario 'player choose paper and loses vs scissor' do
    log_in
    choose(option: 'paper')
    allow(RpsGame::MOVES).to receive(:sample) { 'scissor' }
    click_button 'Play!'
    expect(page).to have_content 'Computer wins!'
  end

  scenario 'player choose scissor and wins vs paper' do
    log_in
    choose(option: 'scissor')
    allow(RpsGame::MOVES).to receive(:sample) { 'paper' }
    click_button 'Play!'
    expect(page).to have_content 'Umberto wins!'
  end

  scenario 'player choose scissor and draws vs scissor' do
    log_in
    choose(option: 'scissor')
    allow(RpsGame::MOVES).to receive(:sample) { 'scissor' }
    click_button 'Play!'
    expect(page).to have_content 'No winners, you draw!'
  end

  scenario 'player choose scissor and loses vs rock' do
    log_in
    choose(option: 'scissor')
    allow(RpsGame::MOVES).to receive(:sample) { 'rock' }
    click_button 'Play!'
    expect(page).to have_content 'Computer wins!'
  end
end