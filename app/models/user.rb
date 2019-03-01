class User < ApplicationRecord
    # before_create :capitalize_name
    # after_create :after_user_create
    validates :name, presence: true
    around_create :around_user_create
    after_create :after_save_user
    scope :active, -> {where(status: 1)}
    scope :inactive, -> {where(status: 0)} 
    private

    def capitalize_name
        puts "Before create"
        self.name = name.capitalize
    end

    def after_user_create
        puts "after user create"
    end

    def after_save_user
        puts "after save user"
    end

    def around_user_create
        puts "in around user create"
        # yield
        puts "out around user create"
    end

end
