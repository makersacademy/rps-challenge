feature 'enter player names' do
  scenario 'player enters their name' do
    sign_in
    expect(page).to have_content 'Welcome Mark...'
  end
end
