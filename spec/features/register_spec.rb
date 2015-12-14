# User story 1
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Register' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'David'
    click_button 'Submit'
    expect(page).to have_content 'David'
  end
end
