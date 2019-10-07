feature "Enter Players" do
  scenario "Players can enter their names and see them on next screen" do 
    sign_in
    expect(page).to have_content('Dan')
  end
  scenario "Players see rps inputs" do
    sign_in
    expect(page).to have_content('Rock')
    expect(page).to have_content('Scissors')
    expect(page).to have_content('Paper')
  end
end