feature "RPS friend2 page", type: :feature do

  scenario "says Hello Johnny" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Friend')
    fill_in('name2', with: 'Johnny')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content("Hello Johnny")
  end

  scenario "it a rock button" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Friend')
    fill_in('name2', with: 'Johnny')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_button("Rock")
  end

  scenario "it a paper button" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Friend')
    fill_in('name2', with: 'Johnny')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_button("Paper")
  end

  scenario "it a scissors button" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Friend')
    fill_in('name2', with: 'Johnny')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_button("Scissors")
  end

end
