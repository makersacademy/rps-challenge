require_relative '../../app.rb'

feature 'index ' do

  scenario "expects player to fill in their name" do
    visit("/")
    fill_in('name', with: 'John')
    click_button('Submit')
  end

end
