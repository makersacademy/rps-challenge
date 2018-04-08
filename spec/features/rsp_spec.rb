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
