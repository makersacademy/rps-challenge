feature "Register player(s) name" do
  scenario "allow player(s) to enter name" do
    visit '/'
    fill_in('player1_name', with: 'Iryna')
    click_button('Submit')
    expect(page).to have_content("Iryna please make your choice!")
  end
end