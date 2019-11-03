feature "local output tests" do
  scenario "page contains text" do
    visit '/'
    expect(page).to have_text("Hello!")
  end
end
