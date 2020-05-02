feature 'results' do
  scenario 'User & computer select light saber, its a tie' do
    # see web_helper.rb for details
    sign_into_game # user is on the hompage
    play_page_content # user is taken to /play page
    make_selection_light_saber # player chooses light saber
    # computer makes a seeded random choice (light saber)
    # goes to results page
    # expect
    expect(page).to have_content 'Born2Win vs. Computer'
    expect(page).to have_content 'It is a tie!'
  end

  scenario 'User: light saber, computer: blaster cannon ' do
    # see web_helper.rb for details
    sign_into_game # user is on the hompage
    play_page_content # user is taken to /play page
    make_selection_light_saber # player chooses light saber
    # computer makes a seeded random choice (light saber)
    # goes to results page
    # expect
    expect(page).to have_content 'Born2Win vs. Computer'
    expect(page).to have_content 'It is a tie!'
  end
end
