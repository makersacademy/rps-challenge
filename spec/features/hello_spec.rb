feature "test" do
  scenario "see if test working" do
    visit '/'
    expect(page).to have_content('Hello world!')
  end
end