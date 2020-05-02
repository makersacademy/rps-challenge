feature 'result' do 

  scenario 'shows player_0 🗿 move' do
    sign_in_and_play
    click_button '🗿'
    expect(page).to have_content 'You chose: 🗿'
  end

  scenario 'shows player_0 📄 move' do
    sign_in_and_play
    click_button '📄'
    expect(page).to have_content 'You chose: 📄'
  end

  scenario 'shows player_0 ✂ move' do
    sign_in_and_play
    click_button '✂'
    expect(page).to have_content 'You chose: ✂'
  end

  scenario 'shows computer move 🗿' do
    sign_in_and_play
    srand(67_803)
    click_button '🗿'
    expect(page).to have_content 'Computer chose: 🗿'
  end

  scenario 'shows computer move 📄' do
    sign_in_and_play
    srand(67_804)
    click_button '🗿'
    expect(page).to have_content 'Computer chose: 📄'
  end

  scenario 'shows computer move ✂' do
    sign_in_and_play
    srand(67_805)
    click_button '🗿'
    expect(page).to have_content 'Computer chose: ✂'
  end

  scenario 'has play again link' do
    sign_in_and_play
    click_button '🗿'
    expect(page).to have_link('Play again?', :href => '/play')
  end
  
end
