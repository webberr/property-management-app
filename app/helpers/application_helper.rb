module ApplicationHelper
	def avatar_url(user)
		gravatar_id = Digest::MD5.hexdigest(user.email).downcase
		"https://www.gravatar.com/avatar/#{gravatar_id}.jpg?s=20"
	end

	def resource_has_error?(resource, field)
		resource.errors.messages[field].present?
	end

	def get_resource_error(resource, field)
		resource.errors.messages[field].join(', ')
	end
end
