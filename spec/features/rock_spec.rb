require_relative './web_helper.rb'

feature "when player chooses rock" do
  let(:player) { double "player" }

  before(:each) do
    sign_in(player)
    click_button "Rock"
  end

  scenario "sees a message with outcome of round" do
    expect(page).to have_content "!"
  end

  # scenario "sees an image of a rock" do
  #   expect(page).to have_xpath("//img[contains(@src,'*Ft2p')]")
  # end

  scenario "finish" do
    until page.has_content? 10
      click_button "Rock"
    end
    expect(page).to have_button "Let's Go Again!"
  end

end
