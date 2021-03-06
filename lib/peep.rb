class Peep
  include DataMapper::Resource

  property :id,     Serial
  property :text,   String
  property :created_at, DateTime
  property :updated_at, DateTime

  has n, :comments
  belongs_to :user

  def time
    self.created_at.strftime("%H:%M")
  end

end
