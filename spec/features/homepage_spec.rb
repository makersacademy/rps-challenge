feature 'test infrastructure' do
  scenario 'player can choose to play single player mode' do
    visit('/')
    choose('mode_1')
  end

  scenario 'player can choose to play two player mode' do
    visit('/')
    choose('mode_2')
  end
end

feature 'two player mode' do
  scenario 'both players can sign in' do
    two_player_sign_in
    expect(page).to have_content "Kavita, you're up first!"
  end

  scenario 'Player 2 has to choose after Player 1 chooses weapon' do
    two_player_sign_in
    click_link('Rock')
    expect(page).to have_content "Vanita, you're up next!"
  end
end

feature 'one player mode' do
  scenario 'player can sign in' do
    one_player_sign_in
  end

  scenario 'player can view name' do
    one_player_sign_in
    expect(page).to have_content 'Welcome, Kavita'
  end

  scenario 'player is told to choose a weapon' do
    one_player_sign_in
    expect(page).to have_content 'Choose your weapon:'
  end

  scenario 'player is given a choice of Rock' do
    one_player_sign_in
    find_button('Rock').click
  end

  scenario 'player is given a choice of Paper' do
    one_player_sign_in
    find_button('Paper').click
  end

  scenario 'player is given a choice of Scissors' do
    one_player_sign_in
    find_button('Scissors').click
  end
end
