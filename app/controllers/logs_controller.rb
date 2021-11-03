class LogsController < ApplicationController

    skip_before_action :verify_authenticity_token

    def index
        logs = Log.all
        render json: logs
    end

    def create
        log = Log.create(src: params[:log], dst: params[:log])
        render json: log
    end
end
