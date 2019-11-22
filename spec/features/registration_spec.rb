feature 'Doing registration by entering name' do
  scenario "submitting the name" do
    visit('/')
    fill_in :your_name, with: 'Lara'
    click_button 'Submit'
  end
end
