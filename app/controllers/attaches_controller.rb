class AttachesController < ApplicationController
  before_action :authenticate_user!
  def destroy
    @attach = Attach.find(params[:id])
    authorize! :destroy, @attach
    klass = @attach.attachable_type == 'Question' ? Question : Answer
    @attach.destroy if current_user.id == klass.find(@attach.attachable_id).user_id
  end
end
