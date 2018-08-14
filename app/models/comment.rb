class Comment < ApplicationRecord
  belongs_to :post
  # post_id foregin_key
end
