require './app.rb'

feature do
  scenario "It does stuff" do
    visit '/'
    expect(page).to have_content("Choose your weapon")
  end
end
