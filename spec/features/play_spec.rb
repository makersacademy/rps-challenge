feature "RPS " do
  scenario "user greeted with their own name" do 
    sign_in
    expect(page).to have_content ("Welcome Bob")
  end


  scenario "user gets asked to pick from rock, paper or scissors?" do 
    sign_in
    expect(page).to have_content ("Pick a move")
  end


end 