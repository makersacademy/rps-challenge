# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'entering names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :name, with: 'Callum'
    click_button 'Submit'
    expect(page).to have_content 'Callum'
  end
end
