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
        expect(page).to have_content("You chose rock.")
    end
    
    scenario "user chooses paper" do
        click_button("Paper")
        expect(page).to have_content("You chose paper.")
    end
    
    scenario "user chooses scissors" do
        click_button("Scissors")
        expect(page).to have_content("You chose scissors.")
    end
end

feature "computer makes a random choice and a winner is declared" do
    
    before do
        allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
        register_and_play
    end
    
    scenario "user chooses rock and wins" do
        click_button("Rock")
        click_button("Continue!")
        expect(page).to have_content("Congratulations Ben, you won!")
    end
    
    scenario "user chooses paper and loses" do
        click_button("Paper")
        click_button("Continue!")
        expect(page).to have_content("Better luck next time Ben, you lost!")
    end
    
    scenario "user chooses scissors and draws" do
        click_button("Scissors")
        click_button("Continue!")
        expect(page).to have_content("It's a draw!")
    end
end