feature 'enter player name' do
  scenario 'player enters name and is taken to welcome page' do
    sign_in
    expect(page).to have_content 'Welcome Ralph!'
  end
end
