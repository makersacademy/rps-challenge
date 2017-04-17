feature 'Enter user names' do
  scenario 'Entering user names on opening the app' do

    # As a marketeer
    # So that I can see my name in lights
    # I would like to register my name before playing an online game

    sign_in_and_play
    expect(page).to have_content 'Welcome to RPS, Tom!'
  end
end
