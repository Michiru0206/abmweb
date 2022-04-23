class DiariesController < ApplicationController
  # before_action :set_diaries, only: [:show, :edit, :update]
  # before_action :authenticate_user!, except: [:index ]
  
  # List all diaries of current user
  def index
    @diaries = current_user.diaries
  end

  # Create a new empty diary
  def new
    @diary = Diary.new
  end

  # Create a diary which contains writing date, title, and content, and save 
  # Redirect to diary page after the new diary is saved
  def create
    @diary = current_user.diaries.new(diary_params)
    @diary.save!
    redirect_to diaries_path
  end

  # Edit the selected diary
  def edit
    @diary = target_diary params[:id]
  end

  # Update the selected diary and redirect to diary page after it is updated
  def update
    @diary = target_diary params[:id]
    @diary.update(diary_params)
    redirect_to diaries_path
  end

  # Delete the selected diary and redirect to diary page after it is destroied
  def destroy
    @diary = target_diary params[:id]
    @diary.destroy
    redirect_to diaries_path
  end

  # Show the details of the diary - users can read content
  def show
    @diary = target_diary params[:id]
  end

  private
    def target_diary diary_id
      current_user.diaries.where(id: diary_id).take
    end

    def diary_params
      params.require(:diary).permit(:writing_date, :title, :content)
    end
end
