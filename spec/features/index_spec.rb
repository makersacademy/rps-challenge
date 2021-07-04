feature "homepage" do
  scenario "user visits homepage and is asked to enter name" do 
    visit('/')
    expect(page).to have_content ("Welcome to RPS")
  end 

  scenario "user visits homepage and is greeted by their name" do 
    sign_in
    expect(current_path).to eq('/game')
  end 


end 