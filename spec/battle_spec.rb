require './lib/battle'
require_relative 'web_helper'

describe Battle do
  it 'receives players move' do
    register_submit_rock
    expect(subject).to receive(:new).with(arg)
  end
end
