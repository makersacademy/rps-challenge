
feature 'au pair' do
  scenario "Au pair message" do
    visit "/au-pair"
    expect(page).to have_content("Rock Paper Scissors")
    expect(page).to have_content("It's a draw!")
  end
end
