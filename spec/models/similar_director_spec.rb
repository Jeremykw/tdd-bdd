require 'spec_helper'

describe Movie do 
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

end