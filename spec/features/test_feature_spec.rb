require_relative '../../app.rb'

feature "test that capybara is working" do
  scenario "sign in and see message" do
    visit('/')
    expect(page).to have_content("Hello World")
  end
end
