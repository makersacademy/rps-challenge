
feature "Sign in" do
  scenario "It lets the user enter their name" do
    visit "/"
    fill_in "player_name", :with => "Costanza"
    click_button "Submit"
    expect(page).to have_text("Hi Costanza, get ready to play R-P-S!")
  end
end



# then will need expectation that it will say welcome back if user has signed in before - this is where we do the file access stuff

# then in later tests for my future user stories will need to test
# 1. lets users sign out and sign back in with a different name
