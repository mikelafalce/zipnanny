class Sitting < ApplicationRecord
  belongs_to :parent, class_name: 'User'
  # belongs_to :nanny, class_name: 'User'

end
