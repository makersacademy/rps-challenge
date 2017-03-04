feature 'registering name' do
  scenario 'register and view name' do
    visit '/'
    fill_in 'name', with: 'John'
    click_button "Submit"
    expect(page).to have_content 'John'
  end
end
