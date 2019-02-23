feature "testing" do
  scenario "content of the page" do
    visit('/')
    expect(page).to have_content "Rock Paper Scissor"
  end
end
