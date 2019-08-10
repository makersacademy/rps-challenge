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

  scenario "gives the option to play again" do
    click_on "Rock"
    find_by_id("play-again").click
    expect(page.current_path).to eq "/game"
  end

  scenario "gives the option to go back to index" do
    click_on "Rock"
    find_by_id("main-menu").click
    expect(page.current_path).to eq "/"
  end
end