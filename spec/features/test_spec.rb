feature "homepage" do
  scenario "it should say hello world" do
    visit '/'
    expect(page).to have_content('Hello World')
  end

end
