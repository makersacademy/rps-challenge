require 'spec_helper'

feature "name registration" do
    scenario "User visits page and enters their name" do
        register_and_play
    end
end

feature "r,p s selection" do
    
    before do
        register_and_play
    end
    
    scenario "user can see their name" do
        expect(page).to have_content("Ben")
    end
    
    scenario "user can see buttons for r, p or s" do
        expect(page).to have_button("Rock")
        expect(page).to have_button("Paper")
        expect(page).to have_button("Scissors")
    end
end