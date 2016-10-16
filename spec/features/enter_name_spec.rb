require "./app"

feature "Enter name" do
  scenario "submitting a name" do
    sign_in_and_play
    expect(page).to have_content "John Doe"
  end
end
