require "spec_helper"

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature "display choice rock,paper,scissors" do
    before do
        visit "/"
        fill_in "name", with: "Liam"
        click_button "submit"
    end
    scenario "after inputting name view rps choices" do
        expect(page).to have_content "rock"
        expect(page).to have_content "paper"
        expect(page).to have_content "scissors"
    end
end