
feature "infra test" do

  scenario "Hello World!" do
    visit('/')
    expect(page).to have_content('Hello World!')
  end

end
