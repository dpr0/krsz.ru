# frozen_string_literal: true

class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :load_question, except: %i[new create]
  after_action :publish_question, only: :create

  respond_to :json

  def index
    respond_with(@questions = Question.all)
  end

  def show
    @house = House.find(params[:house_id])
    @entrance = Entrance.find(params[:entrance_id])
    @answer = @question.answers.build
    respond_with @question
  end

  def new
    respond_with (@question = Question.new)
  end

  def edit; end

  def create
    respond_with (@question = current_user.questions.create(question_params))
    PrivatePub.publish_to '/questions/new', question: @question.to_json if @question.save
  end

  def update
    @question.update(question_params)
    respond_with @question
  end

  def destroy
    respond_with @question.destroy
  end

  private

  def load_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :body, attaches_attributes: %i[id file _destroy])
  end

  def publish_question
    return if @question.errors.any?

    ActionCable.server.broadcast 'questions', ApplicationController.render(partial: 'questions/question_ac', locals: { question: @question })
  end
end
