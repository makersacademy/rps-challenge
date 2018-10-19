feature "Gets user's name" do

  scenario 'greets user' do
    visit ('/')
    expect(page).to have_content("Enter your name below")
  end

  scenario 'submits name' do
    visit ('/')
    fill_in :player_1_name, with: "Ray"
    click_button "Let's Play!"
    expect(page).to have_content("Welcome Ray!")
  end

end
