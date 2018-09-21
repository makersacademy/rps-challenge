require './app/rps_app'

describe 'Features' do

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

  # feature 'visit_homepage', type: :feature do
  #   scenario 'shows page title and asks user to type in name' do
  #     sign_in_and_play
  #     expect(page).to have_content('Please enter your name')
  #   end
  # end

end
