class Api::V1::ProfilesController < Api::V1::BaseController

  def me #http://localhost:3000/api/v1/profiles/me.json?access_token=
    respond_with current_resource_owner
  end

  def users #http://localhost:3000/api/v1/profiles/users.json?access_token=
    respond_with User.where.not('id = ?', current_resource_owner.id)
  end

  def camera_items
    respond_with CameraItem.all
  end

  def camera_models
    respond_with CameraModel.all
  end

  def lens_items
    respond_with LensItem.all
  end

  def lens_models
    respond_with LensModel.all
  end

end