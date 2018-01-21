require "spaceship"
require 'json'

Spaceship::Tunes.login(ARGV[0])

def save_to_json(hash_data, filename)
	File.open(filename,"w") do |f|
  		f.write(JSON.pretty_generate(hash_data))
	end
end

def get_app_info (app)
	app_info = Hash.new
	# keywords, description
	v = nil
	if app.live_version
		v = app.live_version
	elsif app.edit_version
		v = app.edit_version 
	end
	
	fields = ['keywords', 'description', 'promotional_text']
	fields.each do |field|
		app_attr = Hash.new
		app_obj = v.send(field)
		app_obj.original_array.collect do |current|
			key = current['language'] ||= current['localeCode']
			app_attr[key] = current.fetch(app_obj.identifier, {}).fetch('value')
		end
		app_info[field] = app_attr
	end

	# name, subtitle
	d = app.details
	fields = ['name', 'subtitle']
	fields.each do |field|
		app_attr = Hash.new
		app_obj = d.send(field)
		app_obj.original_array.collect do |current|
			key = current['language'] ||= current['localeCode']
			app_attr[key] = current.fetch(app_obj.identifier, {}).fetch('value')
		end
		app_info[field] = app_attr
	end
	return app_info
end

Spaceship::Tunes::Application.all.collect do |app|
  puts "Processing ... #{app.name}"
  app_data = get_app_info(app)
  save_to_json(app_data, "#{app.bundle_id}.json")
end

# app = Spaceship::Tunes::Application.find("com.ittus.swingbattle")
# app_data = get_app_info(app)
# save_to_json(app_data, "#{app.bundle_id}.json")

puts "Done!"