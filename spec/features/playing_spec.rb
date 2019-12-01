feature "playing RPS" do

  before do
    sign_in_and_play
    select("Rock", from: "choice")
    click_button "Submit"
  end

  scenario "their choice should be shown on screen" do
    expect(page).to have_content("Harrison chose rock")
  end

  scenario "playing again" do
    click_link "Play again"
    select("Paper", from: "choice")
    click_button "Submit"
    expect(page).to have_content("Harrison chose paper")
  end
  
end
