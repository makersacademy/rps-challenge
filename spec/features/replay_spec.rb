feature 'Results' do
  let(:player_name) { random_string }
  before { sign_in_and_play player_name ; choose_and_submit 'rock' }

  scenario 'replay takes you back to weapon selection' do
    click_button 'Replay'
    expect(find_field 'rock').to be_checked
    expect(find_field 'paper').not_to be_checked
    expect(find_field 'scissors').not_to be_checked
  end
end