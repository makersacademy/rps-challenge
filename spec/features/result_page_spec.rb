feature 'Result page' do
  scenario 'the users choice is displayed' do
    ready_to_play
    click_button 'Rock'
    expect(page).to have_content "rock"
  end
  scenario 'the computer choice is displayed' do
    ready_to_play
    click_button "Spock"
    expect(page).to have_content(/rock|paper|scissors|lizard|spock/) 
  end
  scenario 'the result is displayed' do
    ready_to_play
    click_button 'Paper'
    expect(page).to have_content(/Won|Lost|Drew/)
  end
end
