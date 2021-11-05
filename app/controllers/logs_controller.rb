class LogsController < ApplicationController

    skip_before_action :verify_authenticity_token

    # GET all logs
    def index
        logs = Log.all
        render json: logs, include: :comments
    end

    # DELETE logs
    def destroy
        log = Log.find_by(id: params[:id])
        log.destroy
        render json: log
    end

    # POST new log
    def create
        new_log = params[:log].split
        dst_string = new_log.select {|piece| piece.include?("dst=")}
        src_string = new_log.select {|piece| piece.include?("src=")}
        dst = dst_string[0].slice(4..-1)
        src = src_string[0].slice(4..-1)
        src_valid = is_valid(src)
        dst_valid = is_valid(dst)
        src_private = is_private(src)
        dst_private = is_private(dst)
        log = Log.create(src: src, dst: dst, src_valid: src_valid, dst_valid: dst_valid, src_private: src_private, dst_private: dst_private)
        render json: log
    end

    def is_valid(str)
        array = str.split('.')
        if array.length != 4
            return false
        elsif array.any?{|x| x.to_i > 255 || x.to_i < 0}
            return false
        else
            return true
        end
    end

    def is_private(str)
        array = str.split('.')
        if array[0] == "10"
            return true
        elsif array[0] == "192" && array[1] == "168"
            return true
        elsif array[0] == "172" && (array[1].to_i > 15 || array[1].to_i < 32)
            return true
        elsif array == "127.0.0.1" || array == "0.0.0.0" || array == "255.255.255.255"
            return true
        elsif array[0] == "240" || array[0] == "255" || array[0] == "224" || array[0] == "239"
            return true
        else
            return false
        end
    end
end
