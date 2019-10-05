
# User story 1
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Registering name' do
  scenario 'A name can be registered and viewed' do
  sign_in_p1
  expect(page).to have_content 'Player: One'
  end
end