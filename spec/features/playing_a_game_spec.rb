require "spec_helper.rb"
# require "lib/rock_paper_scissors_web.rb"
#
feature "Starting a new game" do
  scenario "I am asked to enter my name" do
    visit "/"
    click_link "New Game"
    expect(page).to have_content "Looks like you are bored!"
  end

  scenario "I register my name" do
    visit "/register"
    fill_in('first_name', with: 'Zaid')
    click_button('Play!')
    expect(page).to have_content("Rufio, select your move!")
  end

#   scenario "" do
#
#   end
end
