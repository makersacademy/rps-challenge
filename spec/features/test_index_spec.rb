# Basic test to see if page is working

# feature 'visit homepage' do
#   scenario 'check home page says Boo' do
#     visit '/'
#     expect(page).to have_content('Boo')
#   end
#
# end

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'allow player to register name and see it appear on page' do
  scenario 'allow player to register name' do
    visit '/'
    fill_in 'marketeer1', with: 'Rory'
    click_button 'Submit'
    expect(page).to have_content('Welcome Rory')
  end
end
