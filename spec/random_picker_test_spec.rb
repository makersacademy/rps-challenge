require './spec/support/shared_examples_for_randomPicker.rb'
require './lib/random_picker.rb'

class RandomPickerTest 
  include RandomPicker
end

describe RandomPickerTest do
  it_behaves_like RandomPicker
end
