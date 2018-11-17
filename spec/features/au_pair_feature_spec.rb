
feature 'au pair' do
  scenario "Au pair message" do
    visit "/"
    fill_in('name', with: 'Cesare')
    page.select "rock" , from: "move"
    click_on "Play!"
    click_on "Result"
    expect(page).to have_content("Rock Paper Scissors")
    expect(page).to have_content("It's a draw!")
  end
end
