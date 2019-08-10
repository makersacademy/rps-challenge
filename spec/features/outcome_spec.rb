feature "outcome" do
  before do
    srand(0)
    sign_in
  end

  scenario "player loses" do
    click_on "Scissors"
    expect(page).to have_content "lost"
  end

  scenario "player wins" do
    click_on "Paper"
    expect(page).to have_content "won"
  end

  scenario "draw" do
    click_on "Rock"
    expect(page).to have_content "draw"
  end
end