class Api::V1::UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :avatar, :address, :created_at, :listings_count

    def password_digest
        ""
    end

    def listings_count 
        object.listings.count
    end

    def avatar
        if object.avatar.url 
            object.avatar.url
        elsif object.provider_image
            object.provider_image
        else
            "https://res.cloudinary.com/bmmerce/image/upload/v1540489328/avatar-placeholder.png"
        end
    end
end  