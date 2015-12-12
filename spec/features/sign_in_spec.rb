  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game

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

end
