feature 'Moves' do
  scenario 'see what moves I can select from' do
    sign_in_and_play
    expect(page). to have_content 'Rock'
    expect(page). to have_content 'Paper'
    expect(page). to have_content 'Scissors'
  end
end
