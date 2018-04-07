feature "Player sign in" do
  scenario "can enter a name" do
    sign_in
    expect(page).to have_content('Hi Joe!')
  end


  scenario "player chooses rock computer chooses paper" do
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:paper)
    sign_in
    click_button('Rock')
    expect(page).to have_content('You Lose!')
  end

  scenario "player chooses scissors computer chooses paper" do
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:paper)
    sign_in
    click_button('Scissors')
    expect(page).to have_content('You Win!')
  end


  scenario "player chooses paper computer chooses paper" do
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:paper)
    sign_in
    click_button('Paper')
    expect(page).to have_content("It's a draw!")
  end




end
