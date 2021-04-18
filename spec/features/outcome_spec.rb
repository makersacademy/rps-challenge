feature 'Outcomes' do

  before do 
    stub_comp_with_scissors
    sign_in
  end
  scenario "Can win a game" do
    click_button('rock')

    expect(page).to have_content("Matt's Rock beats computers' Scissors!")
  end

  scenario "Can lose a game" do
    click_button('paper')

    expect(page).to have_content("Matt's Paper loses to computers' Scissors!")
  end

  scenario "Can draw a game" do
    click_button('scissors')

    expect(page).to have_content("Matt's Scissors draws with computers' Scissors")
  end

  scenario "Can play a new round from outcome screen" do
    click_button('scissors')
    click_button('Play again')
    expect(page).to have_content('Welcome Matt please choose a move')
  end
end
