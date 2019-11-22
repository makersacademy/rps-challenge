feature 'RPS' do

  before do
    visit '/'
    fill_in("Player_1_name", with: 'Mario')
    click_button("Play!")
  end
  scenario 'Player can enter his name' do
    expect(page).to have_content 'Mario'
  end
  scenario 'Player is able to see the moves' do
    visit '/play'
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end

  scenario 'Player can choose a move' do
    visit '/play'
    click_button('Rock')
    expect(page).to have_content('Mario chose Rock')
  end

  scenario 'Opponent can choose a move' do
    visit '/play'
    click_button('Rock')
    srand(67809)
    expect(page).to have_current_path('/move')
    expect(page).to have_content('Opponent chose')
    end
  
  scenario 'Player can play again' do
    visit '/move'
    click_button('Play Again!')
    expect(page).to have_current_path('/play')
  end

  scenario 'Player can play again' do
    visit '/move'
    click_button('Exit')
    expect(page).to have_current_path('/')
  end


end