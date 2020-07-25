require_relative './spec_helper'
require_relative '../models/user'

describe User do

  subject { User.new('Daniel') }

  it 'creates a user' do
    expect(subject.name).to eq 'Daniel'
  end
end
