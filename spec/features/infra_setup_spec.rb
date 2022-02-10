
feature "Infrastructure set-up" do
  scenario "shows infra is set up for this program" do
      visit '/'
      expect(page).to have_content ("Infrastructure Test")
  end
end