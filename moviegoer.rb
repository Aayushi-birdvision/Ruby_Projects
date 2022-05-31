class NotMovieClubMemberError < RuntimeError
end
class Moviegoer
  attr_reader :age, :member
  def initialize(age, member: false)
    @age = age
    @member = member
  end
  def ticket_price
    @age >= 60 ? 10 : 15
  end
  def watch_scary_movie?
    @age >= 18
  end
  def claim_free_popcorn!
    @member ? "🍿" : (raise NotMovieClubMemberError)
  end
end
obj = Moviegoer.new
obj.ticket_price
obj.watch_scary_movie?
obj.claim_free_popcorn! 