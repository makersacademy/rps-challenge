feature "homepage" dod 
  scenario "user visits homepage and is asked to enter name" do 
    visit('/')
    expect(page).to have_content ("Welcome to RPS")
    expect(current_path).to eq("Please enter your name")
  end 

  scenario "user visits homepage and is greeted by their name" do 
    visit('/')
    fill_in "name", with: "Bob"
    click_button("register")
    expect(current_path).to eq('/game')
  end 


end 