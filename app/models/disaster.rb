class Disaster < ApplicationRecord
  has_one_attached :photo
  def basic_info
    self.basic + " " + self.basic2 + " " + self.basic3
  end
end
