feature "registering name" do
  scenario "register and see my name" do
    visit('/')
    fill_in 'name', with: 'Louis'
    click_button 'Submit'
    expect(page).to have_content 'It is Louis'
  end
end
