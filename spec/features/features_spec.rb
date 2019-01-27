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
end

feature 'Testing functions of play page' do
  scenario 'Rock button moves onto attack screen' do
    begin_game
    find_button('Rock').click
    expect(page).to have_content 'Player 1 attacked computer with: Rock'
  end

  scenario 'Paper button moves onto attack screen' do
    begin_game
    find_button('Paper').click
    expect(page).to have_content 'Player 1 attacked computer with: Paper'
  end

  scenario 'Scissors button moves onto attack screen' do
    begin_game
    find_button('Scissors').click
    expect(page).to have_content 'Player 1 attacked computer with: Scissors'
  end

  scenario 'Lizard button moves onto attack screen' do
    begin_game
    find_button('Lizard').click
    expect(page).to have_content 'Player 1 attacked computer with: Lizard'
  end

  scenario 'Spock button moves onto attack screen' do
    begin_game
    find_button('Spock').click
    expect(page).to have_content 'Player 1 attacked computer with: Spock'
  end

  scenario 'Computer is shown to attack the player' do
    begin_game
    find_button('Rock').click
    expect(page).to have_content 'Computer attacked Player 1 with:'
  end

  scenario 'There is an outcome to the game' do
    begin_game
    find_button('Rock').click
    expect(page).to have_content 'is the winner!'
  end
end
