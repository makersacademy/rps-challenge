# require 'spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'registering name' do
  scenario 'register and see my name' do
    sign_in
    expect(page).to have_content('test')
  end
end
