feature "play page" do
  scenario "has a rock option" do
    click_and_submit
    expect(page).to have_button 'Rock'
  end

  scenario "has a paper option" do
    click_and_submit
    expect(page).to have_button 'Paper'
  end

  scenario "has a scissors option" do
    click_and_submit
    expect(page).to have_button 'Scissors'
  end

end