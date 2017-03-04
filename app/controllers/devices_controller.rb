class DevicesController < ApplicationController
	protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

	def accel
		@test = Test.create(burp: params[:head_id])
		print Test.last.burp.to_s
	end

	def fitbit

	end

private
	def test_params
      params.require(:test).permit(:burp)
    end
end
