feature RPSController do

  scenario "click to start" do
    visit '/'
    click_link("login")
    expect(page).to have_content("Enter Your Name:")
  end
    
  scenario "Enter name and see it" do
    visit '/'
    click_link 'login'
    fill_in("Name", with: "Bernard")
    click_button "submit"
    expect(page).to have_content "Bernard is Playing"
  end

end