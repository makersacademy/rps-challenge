require 'rps_rules'

describe RpsRules do

  subject = described_class

  it 'lets you read the weapons array' do
    expect(subject.weapons).to eq ['Rock', 'Paper', 'Scissors']
  end

  it 'lets you switch on extended rules' do
    subject.extend(true)
    expect(subject.weapons).to include 'Spock'
  end

  it 'lets you switch off extended rules' do
    subject.extend(false)
    expect(subject.weapons).not_to include 'Spock'
  end

  it 'returns appropriate verb when rules are satisfied' do
    expect(subject.check('Scissors','Paper')).to eq 'cuts'
  end

  it 'returns nil when rules are not satisfied' do
    expect(subject.check('Paper','Scissors')).to eq nil
  end

  it 'registers new rules when extended' do
    subject.extend(true)
    expect(subject.check('Scissors','Lizard')).to eq 'decapitates'
  end

end
