feature "extended play" do

  scenario "spock and lizard options" do
    visit '/'
    click_button "Start"
    check "spock_and_lizard"
    click_button "Submit"
    expect(page).to have_button "spock"
    expect(page).to have_button "lizard"
  end

end
