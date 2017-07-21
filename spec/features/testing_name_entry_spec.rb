feature 'Enter name' do
  scenario "expects player to fill in their name in a form" do
    sign_in_and_play
    expect(page).to have_text("Ryan")
  end
end
