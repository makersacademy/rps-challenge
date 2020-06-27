

feature 'Welcome Screen' do
  scenario 'User will be welcomed and asked to enter name' do
    visit '/' 
    expect(page).to have_content("Enter Your Name:")
  end 
end 

feature 'Name' do
  scenario 'Name will be displayed on the Game screen' do
    visit '/' 
    fill_in :player_name, :with => "testplayer"
    click_button "Submit"
    expect(page).to have_content("testplayer")
  end 
end 
