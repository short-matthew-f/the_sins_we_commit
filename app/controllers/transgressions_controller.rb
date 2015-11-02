class TransgressionsController < ApplicationController
  before_action :require_current_user

  def new
    @transgression = Transgression.new
  end

  def create
    @transgression = current_user.transgressions
                    .new(transgression_params)

    @confession = @transgression.confessions.new(confession_params)

    if @transgression.save && @confession.save
      redirect_to transgressions_path
    else
      flash[:message] = @transgression.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit
  end

  def update
    # params[:id]
  end

  def show
  end

  def index
    @transgressions = current_user.transgressions
        .includes(:confessions)
        .group_by { |x| x.sin_type }
  end

  def delete
  end

  private

  def transgression_params
    return params.require(:transgression)
            .permit(:sin_type, :description)
  end

  def confession_params
    return params.require(:confession)
            .permit(:description, :occurred_at)
  end
end
