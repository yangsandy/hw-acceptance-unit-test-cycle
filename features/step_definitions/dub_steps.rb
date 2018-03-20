Given(/^the following movies exist:$/) do |table|
  table.hashes.each do |movie|
    Movie.create movie
  end
end

Then(/^the director of "([^"]*)" should be "([^"]*)"$/) do |arg1, arg2|
  # Write code here that turns the phrase above into concrete actions
  movie = Movie.find_by_title arg1
  movie.director.should == arg2
end
