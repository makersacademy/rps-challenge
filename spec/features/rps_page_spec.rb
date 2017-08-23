feature "RPS page", type: :feature do

  scenario "says Hello Jenny" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Computer')
    expect(page).to have_content("Hello Jenny")
  end

  scenario "it a rock button" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Computer')
    expect(page).to have_button("Rock")
  end

  scenario "it a paper button" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Computer')
    expect(page).to have_button("Paper")
  end

  scenario "it a scissors button" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Computer')
    expect(page).to have_button("Scissors")
  end

end
