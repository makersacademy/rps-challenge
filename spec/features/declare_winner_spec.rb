feature 'Declare winner' do
  scenario 'Player chose Rock and Computer chose Paper' do
    srand(1)
    visit '/'
    fill_in :player_1_name, with: "Carmen"
    click_button "Register"
    click_button "Rock"
    expect(page).to have_content 'Computer wins!'
  end
end
