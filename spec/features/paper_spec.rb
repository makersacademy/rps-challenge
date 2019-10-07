feature 'paper' do
  scenario 'The user choose to play paper' do
    register
    click_link 'Paper'
    expect(page).to have_content("You've selected paper")
  end
end
