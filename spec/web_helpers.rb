def sign_in_and_play_vs_CPU
    visit '/'
    choose 'Human vs. CPU'
    click_button 'Submit'    
    fill_in 'Player_1_Name', with: 'Bob'
    click_button 'Submit'
end

# def visual_test
#   require 'capybara/dsl'
#   require 'selenium-webdriver'

#   include Capybara::DSL
#   Capybara.default_driver = :selenium
# end