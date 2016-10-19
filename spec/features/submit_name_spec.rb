feature "Submit name", :type => :feature do
  scenario "The player fills in their name" do
    sign_in_and_play
    expect(page).to have_text("Welcome Elizabeth!")
  end
end
