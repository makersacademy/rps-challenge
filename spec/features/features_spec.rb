feature 'Enter name' do
  scenario 'submit name' do
    sign_in_and_play
    expect(page).to have_content('Mario vs Computer!')
  end
end

feature 'Options' do
  scenario 'user is presented with the three opptions' do
    sign_in_and_play
    expect(page).to have_content("Mario vs Computer!\nChoose from these different options:\nrock paper scissors")
  end

  scenario 'user chooses one option' do
    sign_in_and_play
    choose('rock')
    click_button 'Submit'
    expect(page).to have_content('Mario chose rock! Let us see what the computer chooses!')
  end
end
