require 'httparty'

class Movie
  @@count = 0

 def parse
    url = "http://api.nytimes.com/svc/movies/v2/reviews/picks.json?order=by-opening-date&offset=#{@@count}&api-key=663105187ebb5f59f48078d8dd987e3a%3A1%3A54713096"
    @json = JSON.parse(HTTParty.get(url).body)["results"]
  end

  def next
    @@count += 20
  end

  def prev
    if @@count != 0
      @@count -= 20
    else
      @@count
    end
  end

end