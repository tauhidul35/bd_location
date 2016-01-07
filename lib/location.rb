require 'location/version'
require 'yaml'

module Location
  locale = :en
  file_path = File.join(File.dirname(__FILE__), "../locales/#{locale.to_s}.yaml")
  data = YAML.load_file file_path
  @locations = data[locale.to_s]

  def divisions
    @locations.keys.map(&:capitalize)
  end

  def districts(division)
    division = division.to_s.downcase
    puts division
    @locations[division].keys.map(&:capitalize)
  end

  def upazilas(division, district)
    division = division.to_s.downcase
    district = district.to_s.downcase
    @locations[division][district].values
  end

  module_function :divisions, :districts, :upazilas
end
