feature "friend winner page", type: :feature do

  scenario "it says player choices" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Friend')
    fill_in('name2', with: 'Johnny')
    click_button('Submit')
    click_button('Rock')
    click_button('Scissors')
    expect(page).to have_content("Jenny has chosen Rock. Johnny has chosen Scissors.")
  end

  scenario "it says who the winner is" do
    allow_any_instance_of(Game).to receive(:outcome).and_return("Jenny wins!")
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Friend')
    fill_in('name2', with: 'Johnny')
    click_button('Submit')
    click_button('Rock')
    click_button('Scissors')
    expect(page).to have_content("Jenny wins!")
  end

end
