feature 'select move' do
  it 'allows user to choose Rock' do
    sign_in
    click_link 'Rock'
    expect(page).to have_content('Anne: Rock')
  end

  it 'allows user to choose Paper' do
    sign_in
    click_link 'Paper'
    expect(page).to have_content('Anne: Paper')
  end

  it 'allows user to choose Scissors' do
    sign_in
    click_link 'Scissors'
    expect(page).to have_content('Anne: Scissors')
  end
end
