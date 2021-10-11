feature "Enter name" do
  scenario "user registers their name" do
    enter_name_and_ok
    expect(page).to have_content 'Kostas what is your choice?'
  end
end
