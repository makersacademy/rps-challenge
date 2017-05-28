feature 'test infrastructure' do

  scenario 'player can choose to play single player mode' do
    visit('/')
    choose('mode_1')
  end

  scenario 'player can choose to play two player mode' do
    visit('/')
  end

  scenario 'player can sign in' do
    sign_in
  end

  scenario 'player can view name' do
    sign_in
    expect(page).to have_content 'Welcome, Kavita'
  end

  scenario 'player is told to choose a weapon' do
    sign_in
    expect(page).to have_content 'Choose your weapon:'
  end

  scenario 'player is given a choice of Rock' do
    sign_in
    find_button('Rock').click
  end

  scenario 'player is given a choice of Paper' do
    sign_in
    find_button('Paper').click
  end

  scenario 'player is given a choice of Scissors' do
    sign_in
    find_button('Scissors').click
  end
end
