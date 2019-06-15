describe "Index page is working", type: :feature do
  it "displays hello world" do
    visit '/'
    expect(page).to have_content("Hello, World!")

  end
end
