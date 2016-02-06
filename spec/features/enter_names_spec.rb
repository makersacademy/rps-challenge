
feature "enter names" do

  scenario "User enters their name" do
    visit '/'
    fill_in :name1, :with => "sarah"
    click_button "submit"
    expect(page).to have_text("sarah is playing")
  end

end
