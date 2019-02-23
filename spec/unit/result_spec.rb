require './models/result.rb'

describe Result do
  it 'should return correct message for the game result' do
    result = Result.new(:player_win)

    expected_result_message = Result::RESULT_MESSAGES[:player_win]

    expect(result.message).to eq(expected_result_message)
  end
end
