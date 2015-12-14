feature 'Sign in' do
  scenario 'sign in' do
    visit('/')
    fill_in :player_1, with: 'Ed'
    expect(page).to have_content 'Welcome'
  end

  scenario 'names on vs screen' do
    sign_in_and_play
    expect(page).to have_content 'Ed, make your choice'
  end

  scenario 'multiplayer sign in' do
    multi_play_sign_in
  end

end
