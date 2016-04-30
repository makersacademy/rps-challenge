feature 'Weapon Selection' do
  let(:player_name) { random_string }
  before { sign_in_and_play player_name }

  scenario 'rock is selected by default' do
    expect(find_field 'rock').to be_checked
    expect(find_field 'paper').not_to be_checked
    expect(find_field 'scissors').not_to be_checked
  end

  scenario 'can select paper' do
    choose('paper')
    expect(find_field 'paper').to be_checked
    expect(find_field 'rock').not_to be_checked
  end

  scenario 'can select scissors' do
    choose('scissors')
    expect(find_field 'scissors').to be_checked
    expect(find_field 'rock').not_to be_checked
  end
end