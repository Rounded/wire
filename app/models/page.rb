class Page < ActiveRecord::Base
  belongs_to :project
  has_many :components
end
