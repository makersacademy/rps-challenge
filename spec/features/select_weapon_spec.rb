feature 'weapon_selection' do
  let(:player_name) { random_string }
  #before { sign_in_and_play player_name }

  scenario 'rock is selected by default' do
    sign_in_and_play player_name
    expect(find_field 'rock').to be_checked
    expect(find_field 'paper').not_to be_checked
    expect(find_field 'scissors').not_to be_checked
  end

  scenario 'can select paper' do
    sign_in_and_play player_name
    choose('paper')
    expect(find_field 'paper').to be_checked
    expect(find_field 'rock').not_to be_checked
  end

  scenario 'can select scissors' do
    sign_in_and_play player_name
    choose('scissors')
    expect(find_field 'scissors').to be_checked
    expect(find_field 'rock').not_to be_checked
  end
end