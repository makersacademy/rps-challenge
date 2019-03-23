describe "Homepage" do
  it "displays a message to show infra is working" do
    visit("/")
    expect(page).to have_content "Infrastructure working"
  end
end