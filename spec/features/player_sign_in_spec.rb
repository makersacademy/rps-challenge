feature 'Signing In' do
  scenario 'a player can enter their name' do
    visit('/')
    fill_in('player1', with: 'Sam')
    click_button('Submit')
    expect(page).to have_content 'Welcome Sam!'
  end
end
