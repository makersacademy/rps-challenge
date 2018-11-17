
feature 'pc wins' do
  scenario "PC victory message" do
    visit "/pc-wins"
    expect(page).to have_content("Rock Paper Scissors")
    expect(page).to have_content("PC Wins!")
  end
end
