require "spec_helper"

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature "display choice rock,paper,scissors" do
    before do
        visit "/"
        fill_in "player_name", with: "Liam"
        click_button "submit"
    end
    scenario "after inputting name view rps choices" do
        expect(page).to have_button "Rock"
        expect(page).to have_button "Paper"
        expect(page).to have_button "Scissors"
    end

    scenario "able to choose rock, paper or scissors" do
        click_button "Rock"
        expect(page).to have_content "Rock"
    end

    scenario 'computer can choose' do
        $computer_choice = nil
        click_button('Rock')
        visit('/result')
        expect($computer_choice).not_to eq nil
    end

end