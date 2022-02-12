feature "The home page" do
  scenario "we see the Rock Paper scissor index page" do
    visit '/'
    expect(page).to have_content "Let's Rock Paper Scissor"
    expect(page).to have_field("name")
    expect(page).to have_button("Let's Play")
  end
end