class ConfessionsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def create
    transgression = Transgression.find(params[:transgression_id])

    @confession = transgression.confessions.new(confession_params)

    if @confession.save

    else
      render json: {
        error: {
          message: @confession.errors.full_messages.to_sentence
        }
      }
    end
  end

  private

  def confession_params
    return params.require(:confession)
      .permit(:description, :occurred_at)
  end
end
