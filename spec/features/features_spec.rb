feature 'Testing landing page' do
  scenario 'can load page content' do
    visit('/')
    expect(page).to have_content 'Please enter your name'
  end

  scenario 'can move on from the home page' do
    begin_game
    expect(page).to have_content 'The rules of the game:'
  end

  scenario 'can submit names on home page' do
    begin_game
    expect(page).to have_content 'Hello Player 1'
  end
end

feature 'Testing game page displays' do
  scenario 'Options for Rock show on this page' do
    begin_game
    expect(page).to have_button('Rock')
  end

  scenario 'Options for Paper show on this page' do
    begin_game
    expect(page).to have_button('Paper')
  end

  scenario 'Options for Scissors show on this page' do
    begin_game
    expect(page).to have_button('Scissors')
  end

  scenario 'r/p/s buttons move onto attack screen' do
    begin_game
    find_button('Rock').click
    expect(page).to have_content 'Player 1 attacked computer with: Rock'
  end
end
