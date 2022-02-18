# the game will choose a random option

feature "Computer move" do
    scenario "Computer picks a random move" do
    visit('/')
    fill_in :name, with: "Frankie"
    click_button "Play"
    fill_in :move, with: "rock"
    click_button "Play"
    # computer picks scissors.
    expect(page).to have_content "you won"
    end
end
