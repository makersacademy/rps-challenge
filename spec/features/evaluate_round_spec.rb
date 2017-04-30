feature 'Playing a round' do
  scenario 'Bill picks Rock; Bill loses' do
    sign_in_and_play
    first_round
    expect(page).to have_content 'Ted wins'
  end
end
