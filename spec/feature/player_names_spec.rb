require_relative "web_helper.rb"

feature "Enter player names" do
  scenario "Enter the name 'Steve' and have it shown" do
    input_names("Steve")
    expect(page).to have_content("Steve")
  end

  scenario "Enter the name 'Jonny' and have it shown" do
    input_names("Jonny")
    expect(page).to have_content("Jonny")
  end
end
