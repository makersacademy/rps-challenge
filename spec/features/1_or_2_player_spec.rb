feature '1 or 2 player' do
  before do
    visit('/')
  end
  scenario 'choosing single or multiplayer' do
    expect(page).to have_content 'Would you like to play alone or with a friend?'
  end
  scenario 'choosing single or multiplayer' do
    expect(page).to have_selector(:button, 'Single Player Mode')
  end
  scenario 'choosing single or multiplayer' do
    expect(page).to have_selector(:button, 'Two Player Mode')
  end
end