require 'spec_helper.rb'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "register my name "
scenario "registering and viewing my name"
vsist "/"
fill_in "name" with: "Liam"
click_button "submit"
expect(page) to have_content "Liam"