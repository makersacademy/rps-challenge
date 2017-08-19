feature "Test" do
  scenario "Test message should appear on webpage" do
    visit ("/")
    expect(page).to have_content "TESTING"
  end
end
