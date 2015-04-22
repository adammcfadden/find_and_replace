require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do
  it('find the first instance of the user input word, and replace it with the user given replace word') do
    expect("The dog is red".find_and_replace("red", "blue")).to(eq("The dog is blue"))
  end
end
