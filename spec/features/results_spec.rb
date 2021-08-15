
feature "it should present a winner" do
  scenario "on landing on the page it should present first aplyer as the winner" do
    visit("/results?winner=Mike")
    expect(page).to have_content("Well done\nMike!\nbrilliant action")
  end
end
