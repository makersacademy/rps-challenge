require 'sinatra'

feature "Enter name on form" do
  scenario "display form" do
    visit '/'
    fill_in :Name, with: 'Jeff'
    click_button('Enter')
    expect(page).to have_content('Jeff')
  end
end
