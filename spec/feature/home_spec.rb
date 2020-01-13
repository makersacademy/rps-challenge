# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Home page' do
  scenario 'check the home page shows text' do
    visit '/'
    expect(page).to have_content "Welcome to our Rock Paper Scissors Game\nPlease enter name below"
  end
end