platform :ios, '8.0'
use_frameworks!

target 'Budget' do
  pod 'RealmSwift'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
  pod 'ORStackView', '~> 3.0'
      config.build_settings['SWIFT_VERSION'] = '3.0'
    end
  end
end


