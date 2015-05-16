require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I follow "([^"]*)"$/) do |link_text|
  click_link(link_text)
end

Then(/^I should see "([^"]*)"$/) do |text|
  page.has_content?('text')
end

When(/^I see "([^"]*)"$/) do |text|
  page.has_content?('text')
end

When(/^I type in "([^"]*)"$/) do |name|
  fill_in('name', with: name)
end

When(/^press "([^"]*)"$/) do |submit|
  click_button(submit)
end

Given(/^I am on the newgamepage$/) do
 visit('/newgame')
end

When(/^I select "([^"]*)"$/) do |choices|
  choose(choices)
end

Given(/^I am on the game page$/) do
 visit('/game')
end

Given(/^I choose "([^"]*)"$/) do |button|
  choose(button)
end
