  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game

feature 'Sign in' do

  scenario 'signing in' do
    visit('/')
    fill_in :player_1, with: 'Ed'
    fill_in :player_2, with: 'Hayley'
    expect(page).to have_content 'Welcome to RPS'
  end

  scenario 'names on vs screen' do
    visit('/')
    fill_in :player_1, with: 'Ed'
    fill_in :player_2, with: 'Hayley'
    click_button('Submit')
    expect(page).to have_content 'It\'s Ed vs. Hayley'
  end

end
