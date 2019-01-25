feature 'Testing landing page' do
  scenario 'can load page content' do
    visit('/')
    expect(page).to have_content 'Please enter your name'
  end

  scenario 'can submit names on home page' do
    begin_game
    expect(page).to have_content 'The rules of the game:'
  end
end

feature 'Testing game page' do
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
