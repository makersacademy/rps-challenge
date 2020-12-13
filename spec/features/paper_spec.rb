require_relative './web_helper.rb'

feature "when player chooses paper" do
  let(:player) { double "player" }

  before(:each) do
    sign_in(player)
    click_button "Paper"
  end

  scenario "sees a message with outcome of round" do
    expect(page).to have_content "!"
  end

  # scenario "sees an image of paper" do
  #   expect(page).to have_xpath("//img[contains(@src,'*413.jpg')]")
  # end

  scenario "finish" do
    until page.has_content? 10
      click_button "Paper"
    end
    expect(page).to have_button "Let's Go Again!"
  end

end
