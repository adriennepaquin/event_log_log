class LogsController < ApplicationController

    skip_before_action :verify_authenticity_token

    # GET all logs
    def index
        logs = Log.all
        render json: logs
    end

    # POST new log
    def create
        new_log = params[:log].split
        dst_string = new_log.select {|piece| piece.include?("dst=")}
        src_string = new_log.select {|piece| piece.include?("src=")}
        dst = dst_string[0].slice(4..-1)
        src = src_string[0].slice(4..-1)
        byebug
        log = Log.create(src: src, dst: dst)
        render json: log
    end
end
