# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game


RSpec.feature 'homepage' do
  scenario 'invites user to register' do
    visit '/'
    expect(page).to have_text("Sign-in")
  end

end
