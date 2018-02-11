feature 'buttons' do
  scenario 'checks for buttons' do
    visit '/'
    click_button "Let's play!" #checks for buttons, randomly
    expect(page).to have_button (['rock', 'paper', 'scissors'].sample)
  end
end
