feature "testing infrastructure" do
  scenario "can check contents on RPS website" do
    visit("/infrastructure_testing")
    expect(page).to have_content("RPS")
  end
end
