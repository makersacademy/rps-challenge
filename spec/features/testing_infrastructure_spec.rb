feature 'Testing Infrastucture' do
  scenario "should visit homepage and get a simple message returned" do
    visit('/')
    expect(page).to have_content("Hello world")
  end
end
