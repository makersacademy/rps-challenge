feature 'How_to page' do
  scenario 'the user can visit the how_to page from index' do
    visit_how_to
    expect(page).to have_content 'How to Play'
  end

  scenario 'the page has a place to enter name' do
    visit_how_to
    expect(page).to have_content 'Name'
  end

  scenario 'the page has a submit button' do
    visit_how_to
    expect(page).to have_content 'Start'
  end

  scenario 'the user can get to the play page by submitting their name' do
    sign_in_and_play
    expect(page).to have_content 'Rock Paper Scissors'
  end
end
