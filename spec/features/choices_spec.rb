feature 'Player choose a gesture' do 
  scenario 'Player selects a shape Rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Bob\'s choice is Rock')
  end

  scenario 'Player selects a shape Paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content('Bob\'s choice is Paper')
  end

  scenario 'Player selects a shape Scissors' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content('Bob\'s choice is Scissors')
  end

  scenario 'Computer selects a random shape' do
    allow(Game::SHAPES).to receive(:sample).and_return(:paper)
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Computer\'s choice is Paper')
  end
end