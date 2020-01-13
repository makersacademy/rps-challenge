feature 'Enter name on homepage' do
  scenario 'registering name' do
    visit('/')
    fill_in :marketeer_name, with: 'John'
    click_button 'Register'
    expect(page).to have_content 'John'
  end
end