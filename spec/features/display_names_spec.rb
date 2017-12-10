feature 'Displays names as appropriate' do
  scenario 'displays both names when two players are playing' do
    visit '/'
    click_on "Multiplayer"
    fill_in('p1_name', with: "James")
    fill_in('p2_name', with: "Mary")
    click_on "Submit"
    expect(page).to have_content "James Mary"
  end
end
