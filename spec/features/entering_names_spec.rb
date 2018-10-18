feature 'entering a name' do
  scenario 'user enters their name' do
    enter_name_and_play
  end

  scenario 'user submits their name and arrives at the play page' do
    enter_name_and_play
    expect(page).to have_current_path "/play"
  end

  scenario 'user sees an error if they do not enter a name' do
    visit '/'
    click_button "Play!"
    expect(page).to have_content "Please specify a name before playing!"
  end
end
