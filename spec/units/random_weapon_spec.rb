require 'random_weapon'

describe RandomWeapon do
  let(:valid_weapons) { ['Rock', 'Paper', 'Scissors'] }

  it 'returns one valid weapon' do
    result = RandomWeapon.choose
    expect(valid_weapons).to include result
  end

  it 'returns different valid weapons' do
    results = Array.new(100) { RandomWeapon.choose }
    expect(results.uniq.length).to eq valid_weapons.length
  end

  it 'returns only valid weapons' do
    results = Array.new(100) { RandomWeapon.choose }
    valid_weapons.each do |weapon|
      results.reject! { |result| result == weapon }
    end
    expect(results.length).to eq 0
  end
end
