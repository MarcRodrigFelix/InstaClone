class Comment < ApplicationRecord
    belongs_to :posts

    validates_presence_of :comment
    validates_presence_of :account_id
    validates_presence_of :post_id

end
