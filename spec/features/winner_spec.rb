feature "winner page", type: :feature do

  scenario "it records your choice of rock, paper or scissors" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content("You have chosen Rock.")
  end
end
