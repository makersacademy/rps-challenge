require "../app.rb"
require "spec_helper.rb"

feature Rps do
  scenario "confirms that the testing infrastructure is working" do
    visit('/')
    expect(page).to have_content("Testing infrastructure working!")
  end
end