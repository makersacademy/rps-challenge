feature "Test infrastructure set up " do
  scenario "test structure correct" do
    visit('/')
    expect(page).to have_content 'Test'
  end
end
