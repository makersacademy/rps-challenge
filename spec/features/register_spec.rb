feature "registering name" do
  scenario "register and see my name" do
    sign_in_and_submit
    expect(page).to have_content 'It is Louis'
  end
end
