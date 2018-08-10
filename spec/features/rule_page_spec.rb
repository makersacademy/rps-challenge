feature "Testing rules page" do
  before do
    sign_in_and_play
  end
  scenario "Player can click link to view rules" do
    click_button "Need to know the rules?"
    # This should check for the rules image
    expect(page).to have_xpath("//img[contains(@src,'/rock-paper-lizard-spock.jpg')]")
  end
  scenario "Player can go back to play page" do
    click_button "Need to know the rules?"
    click_button "Okay, I'm ready!"
    expect(page).to have_content "Marek vs. Computer"
  end
end
