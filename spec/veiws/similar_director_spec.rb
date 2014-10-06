require 'spec_helper'


describe 'movies/similar_director.html.haml' do
	before do
		FactoryGirl.create(:movie, 
			id: 1,
		    title: "Star Wars",
		    rating: "PG",
		    director: "George Lucas",
		    release_date: "1977-05-25"
		    )
		FactoryGirl.create(:movie, 
			id: 2,
		    title: "Blade Runner",
		    rating: "PG",
		    director: "Ridley Scott",
		    release_date: "1977-05-25"
		    )
		FactoryGirl.create(:movie, 
			id: 3,
		    title: "Alien",
		    rating: "R",
		    director: "",
		    release_date: "1977-05-25"
		    )
		FactoryGirl.create(:movie, 
			id: 4,
		    title: "THX-1138",
		    rating: "R",
		    director: "George Lucas",
		    release_date: "1971-03-1"
		    )
	end

	it 'has the title of the movie' do
		visit 'movies/similar_director/1'
		page.has_content? "Star Wars"

	end
	it 'has a list of similar movies' do
		visit 'movies/similar_director/1'
		page.has_content? "THX-1138"
	end
end