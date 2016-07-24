RSpec.feature "User selects their weapon", :type => :feature do
  before(:each) do
    enter_name_and_play
  end

  scenario "User selects Rock" do
    click_button "Rock"

    expect(page).to have_content "Julie, you selected Rock."
  end

  scenario "User selects Paper" do
    click_button "Paper"

    expect(page).to have_content "Julie, you selected Paper."
  end

  scenario "User selects Scissors" do
    click_button "Scissors"

    expect(page).to have_content "Julie, you selected Scissors."
  end
end
