# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Register players name' do
  scenario 'submitting and seeing name' do
    visit '/'
    fill_in :player_1_name, with: 'Genghis Khan'
    click_button 'Submit'
    expect(page).to have_content 'Genghis Khan'
  end
end
