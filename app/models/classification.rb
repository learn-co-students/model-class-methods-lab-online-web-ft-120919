class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    Classification.all
    # all
  end

  def self.longest
    Classification.includes(boats: :boat_classifications).order(length: :desc).limit(3)
    # Boat.longest.classifications
  end

end
