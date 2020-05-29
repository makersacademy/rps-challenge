feature 'results' do
  # see web_helper.rb for details
  # see game_spec.rb; srand() is set for computer selection

  scenario 'User wins (rock v. scissors)' do
    sign_into_game # user is on the hompage
    play_page_content # user is taken to /play page
    make_selection_rock
    expect(page).to have_content 'Born2Win vs. Computer'
    expect(page).to have_content '#Born2Win is the victor.'
  end

  scenario 'Tie (rock v rock)' do
    sign_into_game # user is on the hompage
    play_page_content # user is taken to /play page
    make_selection_rock
    expect(page).to have_content 'Born2Win vs. Computer'
    expect(page).to have_content 'It is a tie!'
  end

  scenario 'User loses (rock v. paper)' do
    sign_into_game # user is on the hompage
    play_page_content # user is taken to /play page
    make_selection_rock
    expect(page).to have_content 'Born2Win vs. Computer'
    expect(page).to have_content '#Born2Win is the victor.'
  end

  # scenario 'User wins (scissors v. scissors)' do
  #   sign_into_game # user is on the hompage
  #   play_page_content # user is taken to /play page
  #   make_selection_scissors
  #   expect(page).to have_content 'Born2Win vs. Computer'
  #   expect(page).to have_content '#Born2Win is the victor.'
  # end

end
