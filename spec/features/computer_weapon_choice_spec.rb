feature 'Ask computer to choose weapon' do
  scenario 'Give option to see opponent\'s weapon' do
    sign_in_and_play
    rock_choice
    expect(page).to have_content "Click 'View' to find out your opponent\'s weapon!"
  end

  scenario 'Click view and see opponent\'s chose Rock' do #make this random choice
    sign_in_and_play
    rock_choice
    click_button('View')
    expect(page).to have_content "Your opponent chose Paper!"
  end
end
