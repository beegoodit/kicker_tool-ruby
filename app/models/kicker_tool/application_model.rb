module KickerTool
  class ApplicationModel
    include ActiveModel::Model
    include ActiveModel::Attributes
    extend ActiveModel::Naming

    # alias _id to id
    alias_attribute :id, :_id
  end
end
