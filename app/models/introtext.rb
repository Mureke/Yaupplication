class Introtext < ActiveRecord::Base
  validates :text, presence: true
end
