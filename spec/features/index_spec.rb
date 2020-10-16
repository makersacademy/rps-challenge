feature "homepage" dod 
  scenario "user visits homepage and is asked to enter name" do 
    visit('/')
    expect(page).to have_content ("Welcome to RPS")
    expect(current_path).to eq("Please enter your name")
  end 

  scenario "user visits homepage and is greeted by their name" do 
    sign_in
    expect(current_path).to have_content("")
  end 


end 