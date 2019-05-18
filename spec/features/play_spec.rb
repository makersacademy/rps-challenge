feature 'selecting rock, paper or scissors' do
  scenario 'should show your pick' do
    sign_in_and_play
    expect(page).to have_content 'You picked rock.'
  end

  scenario "should show the computer's selection" do
    sign_in_and_play
    expect(page).to have_content 'The computer picked'
  end
end
