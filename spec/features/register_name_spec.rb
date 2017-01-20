require 'spec_helper'

feature "name registration" do
    scenario "User visits page and enters their name" do
        visit('/')
        fill_in("player_1_name", with: "Ben")
        click_button('Play')
    end
end