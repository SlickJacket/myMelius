class Company < ApplicationRecord
    has_many :users

    def ratings
        total = 0
        arry = []
        self.users.each do |user| 
        
            arry << { "id" => user.id, "name" => user.name, "title" => user.title, "rating" => user.average, "image_url" => user.image_url} 
        end
        return arry
end


end
