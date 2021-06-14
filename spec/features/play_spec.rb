feature 'Choose from Rock Paper Scissors' do

  scenario "prompts a choice" do
    enter_p1_name
    expect(page).to have_content "What move would you like to pick?"
  end

  scenario 'click a button' do
    enter_p1_name
    click_button 'Paper'
    expect(page).to have_content "You've chosen Paper"
  end

end
