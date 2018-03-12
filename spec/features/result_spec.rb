feature '/result (result.erb) content check' do

  scenario 'diverting to /result to see if it displays the page header' do
    sign_in_and_play
    click_button('Play')
    expect(page).to have_content "Rock Paper Scissors Makers Academy, Week 3
    (Weekend assignment) Irfan Durrani, Feb '18 Cohort"
  end
end

feature 'Testing if we divert to /result chosing an option and play' do
  scenario 'Choose option and click play' do
    sign_in_and_play
    click_button('Play')
    # find('#rock_label').click
    # find('[for=rock]').click
    expect(page).to have_content("You chose: Rock")
  end
end
