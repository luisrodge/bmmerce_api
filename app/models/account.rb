class Account < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    # Disable password validation for social logins
    has_secure_password :validations => false
    
    belongs_to :business, optional: true
    has_many :listings, dependent: :destroy
    has_many :engagements, foreign_key: :sender_id

    reverse_geocoded_by :latitude, :longitude

    validates_presence_of :name
    validates :email, 'valid_email_2/email': true

    # def engagements
    #     Engagement.where(sender_id: self.id).or(Engagement.where(recipient_id: self.id))
    # end
end
