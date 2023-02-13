class Like < ApplicationRecord
    belongs_to :post
    belongs_to :account
    
    # VALIDATE SO ONLY ONE LIKE PER POST PER ACCOUNT
    validates_uniqueness_of :post_id, scope: :account_id

end