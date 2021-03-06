class GoalSerializer < ActiveModel::Serializer
    attributes :id, :description, :days, :completed, :user_id, :created_at, :created
    belongs_to :user

    def created
        object.created_at.strftime("%A, %B %e, %Y at %I:%M %p")
    end
end