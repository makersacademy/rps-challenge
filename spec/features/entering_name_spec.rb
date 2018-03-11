feature 'entering name' do
  scenario 'entering player name and print on the screen' do
    visit('/')
    fill_in :player1_name, with: "Timmy"
    fill_in :player2_name, with: "Shaun"
    click_button "Submit"
    expect(page).to have_content 'Timmy vs. Shaun'
  end
end
