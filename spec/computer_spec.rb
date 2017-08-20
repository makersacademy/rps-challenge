require './lib/computer'
require_relative 'web_helper'

describe Computer do

  it 'works' do
    expect(subject.class).to eq described_class
  end
  it 'chooses rock, paper or scissors' do
    expect { subject.choice }.to output(String).to_stdout
  end

end
