feature 'shows available choices' do
  scenario 'A player can choose from the available choices' do
    visit '/'
    click_on "Multiplayer"
    fill_in('p1_name', with: "James")
    fill_in('p2_name', with: "Mary")
    click_on "Submit"
    expect(page).to have_button 'Scissors'
  end
end
