# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game


RSpec.feature 'homepage' do
  scenario 'invites user to register' do
    visit '/'
    expect(page).to have_text("Sign-in")
  end
end

RSpec.feature 'signed-in home' do
  scenario 'user is welcomed after signing in' do
    visit '/'
    fill_in :username, :with => "Vicky"
    click_button "Enter"
    expect(page).to have_text("Welcome Vicky")
  end
end
