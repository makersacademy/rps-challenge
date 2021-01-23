feature 'home page' do
  scenario 'User can see their name on the next page' do
    sign_in_and_play
    expect(page).to have_content 'Player: Dude'
  end

  scenario 'User can see the computer name on the next page' do
    srand(1006)
    sign_in_and_play
    expect(page).to have_content "Computer: El'chip dip"
  end
end