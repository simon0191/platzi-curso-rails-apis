class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :published, :author

  def author
    user = self.object.user
    {
      name: user.name,
      email: user.email,
      id: user.id
    }
  end
end
