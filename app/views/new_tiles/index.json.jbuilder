json.array!(@new_tiles) do |new_tile|
  json.extract! new_tile, :id, :original_image, :text_input, :output_image
  json.url new_tile_url(new_tile, format: :json)
end
