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
    choose "rock"
    click_button "submit"
    expect(page).to have_content "Bernard chose Rock"
  end

  scenario "computer chooses randomly" do
    enter_name_and_submit
    choose "rock"
    click_button "submit"
    expect(page).to have_content "Computer chose" #rock, paper or scissors
    #or we could somehow inject a double 
  end

  scenario "submit button goes after choosing" do
    enter_name_and_submit
    choose "rock"
    click_button "submit"
    expect(page).to have_button "submit"
      
  end

end