feature 'The user can be consoled for a defeat' do
  scenario 'once the user has selected a move' do
    sign_in_one_player
    select_move('Paper')
    expect(page).to have_selector("input[type=submit][value='Yes!']")
  end
end
