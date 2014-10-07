Given(/^the following movies exist:$/) do |table|
  id_num = 1
  table.hashes.each do |movie|
    Movie.create do |add_movie|
      add_movie.title = movie[:title]
      add_movie.rating = movie[:rating]
      add_movie.director = movie[:director]
      add_movie.release_date = movie[:release_date]
      add_movie.id = id_num
    end
  id_num += 1
  end
end

Then(/^the director of "(.*?)" should be "(.*?)"$/) do |movie, director|
  @movie = Movie.find_by_title("#{movie}")
  @movie.director.should == director

end
