class NewTile < ActiveRecord::Base
  mount_uploader :original_image, ImageUploader
  mount_uploader :output_image, ImageUploader

  after_initialize :process_image

  def process_image
  	outputfile = `#{Rails.root}/public/images/imageput.sh "#{quote}" "#{original_image.path}" "#{font_size}" "#{font_color}" "#{font_outline}" "#{font_style}" "#{border_color}"`.strip
  	self.output_image = File.open("#{Rails.root}/public/images/#{outputfile}")
  	Rails.logger.warn(self.output_image)
  end
end
