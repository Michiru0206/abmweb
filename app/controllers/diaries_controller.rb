class DiariesController < ApplicationController
  # before_action :set_diaries, only: [:show, :edit, :update]
  # before_action :authenticate_user!, except: [:index ]
  def index
    @diaries = current_user.diaries
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = current_user.diaries.new(diary_params)
    @diary.save!
    redirect_to diaries_path
  end

  def edit
    @diary = target_diary params[:id]
  end

  def update
    @diary = target_diary params[:id]
    @diary.update(diary_params)
    redirect_to diaries_path
  end

  def destroy
    @diary = target_diary params[:id]
    @diary.destroy
    redirect_to diaries_path
  end

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
