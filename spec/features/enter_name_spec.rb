feature 'player can enter their own name' do
  scenario 'player enters their name and starts a game' do
    sign_in_and_play
    expect(page).to have_content 'Josh vs. The Robot'
  end
end
