feature 'Play again' do
  scenario "Clicking 'Play again' goes to the 'Choose move' page" do
    enter_name_and_start
    click_button 'Rock'
    click_button 'Play again'
    expect(page).to have_current_path('/choose-move')
  end
end