class Like < ApplicationRecord
    belongs_to :post
    belongs_to :account
    
    # VALIDATE SO ONLY ONE LIKE PER POST PER ACCOUNT
    validates_uniqueness_of :post_id, scope: :account_id

    after_create :increase_post_like_container
    after_destroy :decrease_post_like_container

    private

    def increase_post_like_container
        Post.find(self.post_id).increment(:total_likes_count).save
    end

    def decrease_post_like_container
        Post.find(self.post_id).decrement(:total_likes_count).save
    end

end