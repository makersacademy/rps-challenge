RSpec.feature "User selects their weapon", :type => :feature do
  before(:each) do
    enter_name_and_play
  end

  scenario "User selects Rock" do
    choose 'rock'
    click_button "Submit"

    expect(page).to have_content "Julie, you selected Rock."
  end

  scenario "User selects Paper" do
    choose 'paper'
    click_button "Submit"

    expect(page).to have_content "Julie, you selected Paper."
  end

  scenario "User selects Scissors" do
    choose 'scissors'
    click_button "Submit"

    expect(page).to have_content "Julie, you selected Scissors."
  end
end
