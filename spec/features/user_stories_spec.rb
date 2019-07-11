# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'User Story 1: So I can see my name, I would like to register it before playing.' do
  scenario 'Can enter and see name' do
    visit('/')
    fill_in 'name', with: 'Toby'
    click_button 'Submit'
    expect(page).to have_text 'Welcome to XTREME-RPS Toby'
  end
end
