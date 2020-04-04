feature 'When player picks weapon' do
  scenario 'CPU is created' do
    visit '/'
    click_button('Go!')
    click_button('Rock')
    expect(page).to have_content "Rock vs. Scissors"
  end
end