require_relative "../../lib/app"

feature "can register name" do
  scenario "go to home page, register name and see confirmation" do
    visit("/")
    fill_in(:name, with: "Joe")
    click_button(:Submit)
    expect(page).to have_content("Joe vs Computer")
  end
end