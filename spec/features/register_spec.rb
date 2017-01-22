require 'spec_helper.rb'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Register' do
  scenario 'See the registered name' do
    visit('/')
    fill_in('name', with: 'Varvara')
    click_button('Submit')
    expect(page). to have_content('Varvara')
  end
end


# -
# - a winner will be declared
