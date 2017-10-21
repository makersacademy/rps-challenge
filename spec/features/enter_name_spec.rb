feature 'takes users name and returns new route displaying their name' do
  scenario 'user types name into form' do
    sign_in_and_play
    expect(page).to have_content "Edward is now in the game"
  end
end
