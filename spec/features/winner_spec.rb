feature "winner page", type: :feature do

  scenario "it says your choice if you choose Rock" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Computer')
    click_button('Rock')
    expect(page).to have_content("Jenny has chosen Rock.")
  end

  scenario "it says your choice if you choose Paper" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Computer')
    click_button('Paper')
    expect(page).to have_content("Jenny has chosen Paper.")
  end

  scenario "it says your choice if you choose Scissors" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Computer')
    click_button('Scissors')
    expect(page).to have_content("Jenny has chosen Scissors.")
  end

  scenario "it says the computers choice is Rock if computer chooses Rock" do
    allow_any_instance_of(Game).to receive_message_chain(:player2, :choice).and_return("Rock")
    allow_any_instance_of(Game).to receive_message_chain(:player2, :name).and_return("Computer")
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Computer')
    click_button('Rock')
    expect(page).to have_content("Computer has chosen Rock.")
  end

  scenario "it says the computers choice is Paper if computer chooses Paper" do
    allow_any_instance_of(Game).to receive_message_chain(:player2, :choice).and_return("Paper")
    allow_any_instance_of(Game).to receive_message_chain(:player2, :name).and_return("Computer")
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Computer')
    click_button('Rock')
    expect(page).to have_content("Computer has chosen Paper.")
  end

  scenario "it says the computers choice is Scissors if computer chooses Scissors" do
    allow_any_instance_of(Game).to receive_message_chain(:player2, :choice).and_return("Scissors")
    allow_any_instance_of(Game).to receive_message_chain(:player2, :name).and_return("Computer")
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Computer')
    click_button('Rock')
    expect(page).to have_content("Computer has chosen Scissors.")
  end

  scenario "it says if you've won" do
    allow_any_instance_of(Game).to receive(:outcome).and_return("You win!")
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Computer')
    click_button('Rock')
    expect(page).to have_content("You win!")
  end

  scenario "it says if you've lost" do
    allow_any_instance_of(Game).to receive(:outcome).and_return("You lose!")
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Computer')
    click_button('Paper')
    expect(page).to have_content("You lose!")
  end

  scenario "it says it's a draw" do
    allow_any_instance_of(Game).to receive(:outcome).and_return("It's a draw!")
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    click_button('Play Computer')
    click_button('Scissors')
    expect(page).to have_content("It's a draw!")
  end
end
