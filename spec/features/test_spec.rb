require "./app.rb"

feature "finds server and content" do

  scenario "tests for hello world" do
    visit("/")
    expect(page).to have_content("Hello world")
  end

end
