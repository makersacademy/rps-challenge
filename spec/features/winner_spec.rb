feature "winner page", type: :feature do

  scenario "it says your choice if you choose Rock" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content("You have chosen Rock.")
  end

  scenario "it says your choice if you choose Paper" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Paper')
    expect(page).to have_content("You have chosen Paper.")
  end

  scenario "it says your choice if you choose Scissors" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Scissors')
    expect(page).to have_content("You have chosen Scissors.")
  end

  scenario "it says the computers choice is Rock if computer chooses Rock" do
    allow_any_instance_of(Game).to receive(:comp_choice).and_return("Rock")
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content("Computer has chosen Rock.")
  end

  scenario "it says the computers choice is Paper if computer chooses Paper" do
    allow_any_instance_of(Game).to receive(:comp_choice).and_return("Paper")
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content("Computer has chosen Paper.")
  end

  scenario "it says the computers choice is Scissors if computer chooses Scissors" do
    allow_any_instance_of(Game).to receive(:comp_choice).and_return("Scissors")
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content("Computer has chosen Scissors.")
  end
end
