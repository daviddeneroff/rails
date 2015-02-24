class Vote < ActiveRecord::Base
  belongs_to :excuse
  belongs_to :user
end
