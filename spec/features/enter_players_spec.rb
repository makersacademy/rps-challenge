feature "Enter Players" do
  scenario "Players can enter their names and see them on next screen" do 
    sign_in
    expect(page).to have_content('Dan', 'Stan')
  end
end