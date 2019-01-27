require_relative '../../app.rb'

feature 'homepage ' do 
  scenario "says testing infrastructure working!" do 
    visit("/")
    expect(page).to have_content "Testing Homepage!"
  end 
end 

