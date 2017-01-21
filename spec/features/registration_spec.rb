# User Story 1:

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Registration' do
  scenario 'submitting name' do
    visit('/')
    fill_in :name, with: 'Katerina'
    click_button 'Start game'
    expect(page).to have_content 'Welcome, Katerina!'
  end
end
