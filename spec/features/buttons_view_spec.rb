feature 'View three choises' do
  scenario 'Option rock' do
    sign_in_and_play
    expect(page).to have_selector('button#rock')
  end

  scenario 'Option paper' do
    sign_in_and_play
    expect(page).to have_selector('button#paper')
  end

  scenario 'Option scissors' do
    sign_in_and_play
    expect(page).to have_selector('button#scissors')
  end



end
