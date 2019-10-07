# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'register' do
  scenario 'registers a new user' do
    register
  end
end

feature 'login' do
  scenario 'logins a previous user' do
    login
    play
    expect(page).to have_content "You chose paper"
  end
end

#
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'play' do
  scenario 'play rock/paper/scissors' do
    register
    play
    expect(page).to have_content "You chose paper"
  end
end
