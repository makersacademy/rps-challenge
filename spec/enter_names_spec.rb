require 'pry'

feature 'name entry' do
  scenario 'Submitting names' do
    visit '/'
    fill_in 'challenger', with: "Mortimer"
    expect(page).to have_content "Welcome, young Mortimer!"
  end
end
