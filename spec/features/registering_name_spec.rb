require "././app.rb"

feature "registering name" do
  scenario "saves an inputted name" do
    visit '/'
    fill_in :name, with: "Tim"
    click_on 'submit'
    expect(page).to have_content "Hello Tim"
  end
end
