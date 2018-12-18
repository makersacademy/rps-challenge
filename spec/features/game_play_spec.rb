feature 'Playing Game' do
  scenario '#presented with attack options' do
    sign_in_and_play
    expect(page).to have_content 'Choose your attack:'
    expect(page).to have_content 'Computer vs. Socks'
    select 'Rock', from: 'user_choice'
  end
  scenario '#user choses one attack' do
    sign_in_and_play
    select 'Rock', from: 'user_choice'
    click_button 'Go'
    expect(page).to have_content 'You chose le Rock!'
  end

  scenario '#computer chooses an attack' do
    sign_in_and_play
    srand(3)
    select 'Scissors', from: 'user_choice'
    click_button 'Go'
    expect(page).to have_content 'Computer chose le Scissors!'
  end

end
