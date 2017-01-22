feature "chosing throw" do
  before(:each) {log_in}
  scenario "player chooses Paper" do
    choose "Paper"
    click_button "FIGHT"
    expect(page).to have_content("Billy picked paper")
  end

  scenario "player chooses a Rock" do
    choose "Rock"
    click_button "FIGHT"
    expect(page).to have_content("Billy picked rock")
  end
  scenario "player chooses a Scissors" do
    choose "Scissors"
    click_button "FIGHT"
    expect(page).to have_content("Billy picked scissors")
  end
end
