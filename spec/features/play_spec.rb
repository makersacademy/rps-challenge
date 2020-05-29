feature 'play' do
  scenario 'User selects rock' do
    sign_into_game # see web_helper.rb
    play_page_content
    make_selection_rock
  end

  scenario 'User selects paper' do
    sign_into_game # see web_helper.rb
    play_page_content
    make_selection_paper
  end

  scenario 'User selects scissors' do
    sign_into_game # see web_helper.rb
    play_page_content
    make_selection_scissors
  end

end
