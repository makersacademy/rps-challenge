feature "RPS page", type: :feature do

  scenario "it a rock button" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    expect(page).to have_button("Rock")
  end


  scenario "it a paper button" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    expect(page).to have_button("Paper")
  end


  scenario "it a scissors button" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    expect(page).to have_button("Scissors")
  end
  
end
