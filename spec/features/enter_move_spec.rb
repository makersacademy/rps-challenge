# the marketeer will be presented the choices (rock, paper and scissors)
# the marketeer can choose one option

feature "Enter move" do
    scenario "Marketeer picks their move" do
    visit('/')
    fill_in :marketeer, with: "Frankie"
    click_button "Play"
    fill_in :move, with: "rock"
    click_button "Play"
    expect(page).to have_content "You've chosen rock, Frankie"
    end
end
