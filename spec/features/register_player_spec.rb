feature 'register before the start of the game' do
  scenario 'enter player name' do
    sign_in_and_start
    expect(page).to have_content 'Bob, choose your weapon'
  end
end
