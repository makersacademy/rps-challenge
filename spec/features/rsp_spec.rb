feature 'allow player to input name ' do

  scenario 'instractions appear' do
    visit ('/')
    expect(page).to have_content ("PLEASE ENTER YOUR NAME")
  end

  scenario 'form accepts name and displays it' do
    sign_in_and_play
    expect(page).to have_content ("SHERLOCK VS. COMPUTER")
  end

end

feature 'allow users to choose r/p/s and see the computer choice' do

  scenario 'find putton and show the result on page' do
    visit '/'
    sign_in_and_play
    find_button('ROCK').click
    expect(page).to have_content ('PLAYER: ROCK')
  end

  scenario 'see the computer choice on page' do
    visit '/'
    sign_in_and_play
    find_button('ROCK').click
    expect(page).to have_content ('COMPUTER: ')
  end

end
