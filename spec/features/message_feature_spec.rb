
feature 'message page' do
  scenario "Victory message" do
    visit "/message"
    expect(page).to have_content("Rock Paper Scissors")
    expect(page).to have_content("Cesare Wins!")
  end
end
