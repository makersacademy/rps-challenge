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
    
    scenario "user chooses rock" do
        click_button("Rock")
        expect(page).to have_content("You chose: Rock")
    end
    
    scenario "user chooses paper" do
        click_button("Paper")
        expect(page).to have_content("You chose: Paper")
    end
    
    scenario "user chooses scissors" do
        click_button("Scissors")
        expect(page).to have_content("You chose: Scissors")
    end
end