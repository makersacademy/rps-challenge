require_relative 'name_helper'

feature 'action' do
  scenario 'plays correct move' do
    ['rock', 'paper', 'scissors'].each do |action|
      enter_name_and_start('Test')
      click_link(action)
      expect(page).to have_content("Test: #{action}")
    end
  end

  scenario 'displays correct response', driver: :selenium do
    enter_name_and_start('Test')
    computer_choices = Array.new
    until computer_choices.length == 3 do
      click_link('rock')
      computer_choice = find('#computer-choice').text
      computer_choices << computer_choice if !computer_choices.include?(computer_choice)
      result = page.find('#result').text
      if computer_choice.include?('rock')
        expect(result).to match('Draw')
      elsif computer_choice.include?('paper')
        expect(result).to match('Computer wins')
      elsif computer_choice.include?('scissors')
        expect(result).to match('Test wins')
      end
      click_link('Play again')
    end
  end
end
