feature 'selecting rock, paper or scissors' do
  scenario 'should show your pick' do
    sign_in_and_play
    expect(page).to have_content 'You picked rock.'
  end

  scenario "should show the computer's pick" do
    allow_any_instance_of(Computer).to receive(:result).and_return('rock')
    sign_in_and_play
    expect(page).to have_content 'The computer picked rock.'
  end
end

feature 'losing' do
  scenario 'should display a losing message' do
    allow_any_instance_of(Computer).to receive(:result).and_return('paper')
    sign_in_and_play
    expect(page).to have_content 'You lose!'
  end
end
