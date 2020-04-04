feature "Test infrastrucute working" do
  scenario "Can run app and check page content" do
    visit "/"
    expect(page).to have_content "Welcome to Rock Paper Scissors!"
  end
end

feature "User can reigister name before playing an online game" do
  scenario "User can enter name into a field and submit" do
    visit "/"
    fill_in :enter_name, with: 'Alex'
    click_button 'Submit'
    expect(page).to have_content "Hello Alex"
  end
end
