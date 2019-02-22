require './app'

feature "Display" do
  scenario "initial environment test" do
    visit '/'
    expect(page).to have_content("I'm working")
  end
end
