require_relative '../../lib/app.rb'

feature "gets and displays players name" do
  scenario "players enter names" do
    details
    click_button("submit")
    expect(page).to have_content("Kirill picked ")
  end
end
