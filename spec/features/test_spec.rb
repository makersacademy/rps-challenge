# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'sign in page' do
  scenario 'Can see a form with a field to sign in my name' do
    visit('/')
    expect(page).to have_content 'Enter Your Name'
  end
end
