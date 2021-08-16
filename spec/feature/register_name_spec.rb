require_relative "../../lib/app"

feature "can register name" do
  scenario "go to home page, register name and see confirmation" do
    sign_in_and_play
    expect(page).to have_content("Joe vs Computer")
  end
end
