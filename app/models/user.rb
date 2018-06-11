class User < ApplicationRecord
    has_secure_password

    has_many :tasks
    has_many :lists, through :tasks

    def num_of_tasks
        self.tasks.count
    end
end
