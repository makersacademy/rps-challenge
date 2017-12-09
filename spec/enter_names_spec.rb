require 'pry'

feature 'name entry' do
  scenario 'Submitting names' do
    visit '/'
    expect(page).to have_content "challenger"
  end
  scenario 'Submitting names' do
    visit '/'
    fill_in 'Challenger', with: "Gerald"
    click_button "Battle!"
    expect(page).to have_content "Welcome, young Gerald!"
  end
end
