feature RPSController do

  scenario "click to start" do
    visit '/'
    click_link("login")
    expect(page).to have_content("Enter Your Name:")
  end
    
  scenario "Enter name and see it" do
    enter_name_and_submit
    expect(page).to have_content "Bernard is Playing"
  end

  scenario "Enters choice and sees confirmation" do
    enter_name_and_submit
    expect(page).to have_content "Select Move"
    choose "rock"
    click_button "submit"
    expect(page).to have_content "Bernard chose Rock"
  end

end