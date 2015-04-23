require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('find_and_replace path', {:type => :feature}) do
  it('Receive three user inputs (sentence, find, replace) sends them through the find_and_replace method and returns them to the find_and_replace.erb for the user to view') do
    visit('/')
    fill_in('sentence_input', :with => 'The blue dog chases the bluebird through a blueberry bush')
    fill_in('find_input', :with => 'blue')
    fill_in('replace_input', :with => 'red')
    click_button('submit')
    expect(page).to(have_content('The red dog chases the redbird through a redberry bush'))
  end
end
