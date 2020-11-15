feature 'logs player & computer selection' do
  scenario 'Player receives confirmation of their selection' do
    sign_in_and_play
    choose('Rock')
    click_button "Submit"
    expect(page).to have_content 'You chose Rock!'
  end

  scenario 'Player receives confirmation of computer selection' do
    srand(4)
    sign_in_and_play
    choose('Rock')
    click_button "Submit"
    expect(page).to have_content 'Computer chose Scissors!'
  end



end
