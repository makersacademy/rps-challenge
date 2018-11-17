
feature 'player wins' do
  scenario "Player victory message" do
    visit "/player-wins"
    expect(page).to have_content("Rock Paper Scissors")
    expect(page).to have_content("Cesare Wins!")
  end
end
