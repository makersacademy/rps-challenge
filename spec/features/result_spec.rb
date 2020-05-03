feature 'result' do 

  scenario 'shows player_0 🗿 move' do
    sign_in_and_play
    click_button '🗿'
    expect(page).to have_content "#{RSPEC_TEST_PLAYER_0_NAME} move: 🗿"
  end

  scenario 'shows player_0 📄 move' do
    sign_in_and_play
    click_button '📄'
    expect(page).to have_content "#{RSPEC_TEST_PLAYER_0_NAME} move: 📄"
  end

  scenario 'shows player_0 ✂ move' do
    sign_in_and_play
    click_button '✂'
    expect(page).to have_content "#{RSPEC_TEST_PLAYER_0_NAME} move: ✂"
  end

  scenario 'shows computer move 🗿' do
    sign_in_and_play
    srand(67_803)
    click_button '🗿'
    expect(page).to have_content "#{RSPEC_TEST_COMPUTER_NAME} move: 🗿"
  end

  scenario 'shows computer move 📄' do
    sign_in_and_play
    srand(67_804)
    click_button '🗿'
    expect(page).to have_content "#{RSPEC_TEST_COMPUTER_NAME} move: 📄"
  end

  scenario 'shows computer move ✂' do
    sign_in_and_play
    srand(67_805)
    click_button '🗿'
    expect(page).to have_content "#{RSPEC_TEST_COMPUTER_NAME} move: ✂"
  end

  scenario 'has play again link' do
    sign_in_and_play
    click_button '🗿'
    expect(page).to have_link('Play again?', :href => '/play')
  end
  
end
