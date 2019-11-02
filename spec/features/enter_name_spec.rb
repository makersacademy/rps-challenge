feature 'enter names' do
  scenario 'player can enter their name and see it on screen' do
    visit '/'
    fill_in :playername, with: "Ellie"
    click_button("Submit")
    expect(page).to have_content "Ellie"
  end
end
