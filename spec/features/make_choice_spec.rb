feature 'player makes a choice between RPS' do
  scenario 'picking confirms a choice' do
    visit('/')
    fill_in('name', with: 'Dec')
    click_button('submit')
    click_button('rock')
    expect(page).to have_content("You picked rock.")
  end
end
