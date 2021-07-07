feature 'result' do 

  scenario 'shows player_0 🗿 move' do
    sign_in_and_play_computer
    click_button '🗿'
    expect(page).to have_content "#{RSPEC_TEST_PLAYER_0_NAME} move: 🗿"
  end

  scenario 'shows player_0 📄 move' do
    sign_in_and_play_computer
    click_button '📄'
    expect(page).to have_content "#{RSPEC_TEST_PLAYER_0_NAME} move: 📄"
  end

  scenario 'shows player_0 ✂ move' do
    sign_in_and_play_computer
    click_button '✂'
    expect(page).to have_content "#{RSPEC_TEST_PLAYER_0_NAME} move: ✂"
  end

  scenario 'shows computer move 🗿' do
    sign_in_and_play_computer
    srand(67_803)
    click_button '🗿'
    expect(page).to have_content "#{RSPEC_TEST_COMPUTER_NAME} move: 🗿"
  end

  scenario 'shows computer move 📄' do
    sign_in_and_play_computer
    srand(67_804)
    click_button '🗿'
    expect(page).to have_content "#{RSPEC_TEST_COMPUTER_NAME} move: 📄"
  end

  scenario 'shows computer move ✂' do
    sign_in_and_play_computer
    srand(67_805)
    click_button '🗿'
    expect(page).to have_content "#{RSPEC_TEST_COMPUTER_NAME} move: ✂"
  end

  scenario 'has same players link' do
    sign_in_and_play_computer
    click_button '🗿'
    expect(page).to have_link('Same Players', :href => '/play')
  end

  scenario 'has new players link' do
    sign_in_and_play_computer
    click_button '🗿'
    expect(page).to have_link('New Players', :href => '/')
  end
  
end
