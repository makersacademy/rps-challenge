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
        expect(page).to have_button "rock"
        expect(page).to have_button "paper"
        expect(page).to have_button "scissors"
    end

    scenario "able to choose rock,paper or scissors" do
        click_button "rock"
        expect(page).to have_content "you chose rock"
    end

    scenario "cpu chooses rock" do
        click_button "rock"

        message = find(:css, "#cpu").text

        expect(cpu_choices).to include message
    end

    def cpu_choices
        [:rock, :paper, :scissors]. map {|choice| "cpu chose #{choice}"}
    end
end