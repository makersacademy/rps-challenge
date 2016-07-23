feature 'choose object' do
  scenario 'rock' do
    sign_in
    #find_button('Rock').click
    page.choose('Rock')
    find_button('Select object').click
    expect(page).to have_content 'Alex plays Rock against AI Overlord'
  end

  scenario 'paper' do
    sign_in
    page.choose('Paper')
    find_button('Select object').click
    expect(page).to have_content 'Alex plays Paper against AI Overlord'
  end

  scenario 'scissors' do
    sign_in
    page.choose('Scissors')
    find_button('Select object').click
    expect(page).to have_content 'Alex plays Scissors against AI Overlord'
  end
end
