feature "player enters names" do
  scenario'user sees page to enter his name' do
    visit'/'
    expect(page).to have_content("Please enter your name")
  end
  scenario'user enters his name' do
    visit'/'
    fill_in "name", :with => "Samed"
    click_button "Submit"
    expect(page).to have_content ("Samed")
  end
  
end
