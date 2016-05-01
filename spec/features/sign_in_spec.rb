
feature "Sign in" do
  scenario "It lets the user enter their name if they have not visited before" do
    File.delete("./lib/name_log.txt") if File.file?('./lib/name_log.txt')
    visit "/"
    fill_in "player_name", :with => "Costanza"
    click_button "Submit"
    expect(page).to have_text("Hi Costanza, get ready to play R-P-S!")  end

  scenario "It remembers the user if they have signed in before" do
    File.delete("./lib/name_log.txt") if File.file?('./lib/name_log.txt')
    name_log = File.new("./lib/name_log.txt", "w")
    name_log.write("Costanza")
    name_log.close
    visit "/"
    #check the saved name file - if it exists, forward to /splash and display
    # saved name, otherwise call /sign_in
    # so for this test, need some mocks regarding the saved name file
    # where is the proper place for these to go? here, or in a logic test?
    # expect(page).to have_text("Hi Costanza, get ready to play R-P-S!")
  end
end



# then will need expectation that it will say welcome back if user has signed in before - this is where we do the file access stuff

# then in later tests for my future user stories will need to test
# 1. lets users sign out and sign back in with a different name
