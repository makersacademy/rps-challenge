feature 'Sign in' do
  scenario 'signing in' do
    visit('/')
    fill_in :player_1, with: 'Ed'
    expect(page).to have_content 'Welcome to RPS'
  end

  scenario 'names on vs screen' do
    sign_in_and_play
    expect(page).to have_content 'Ed, make your choice'
  end

  scenario '2 player' do
    multi_play_sign_in
    expect(page).to have_content 'Hayley\'s score: 0'
  end
end
