# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

RSpec.feature 'homepage' do
  scenario 'invites user to register' do
    visit '/'
    expect(page).to have_field(:username_1)
  end
end

RSpec.feature 'signed-in home' do
  scenario 'user is welcomed after signing in' do
    register
    expect(page).to have_text("Welcome Vicky")
  end
end

RSpec.feature 'single-player mode' do
  scenario 'a single player can sign in' do
    visit '/'
    fill_in :username_1, :with => "Vicky"
    click_button "Enter"
    expect(page).to have_button('Rock')
  end
end

RSpec.feature 'single-player mode' do
  scenario 'a single player can compete against the computer' do
    visit '/'
    fill_in :username_1, :with => "Vicky"
    click_button "Enter"
    expect(page).to have_text('Computer: 0')
  end
end

RSpec.feature 'score' do
  scenario 'user can see score on sign-in' do
    register
    expect(page).to have_text("Vicky: 0 pts")
  end
end
