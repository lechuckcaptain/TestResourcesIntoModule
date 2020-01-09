# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'

use_frameworks! :linkage => :static
install! 'cocoapods', :generate_multiple_pod_projects => true

target 'TestResourcesIntoModule' do
  # Comment the next line if you don't want to use dynamic frameworks


  # Pods for TestResourcesIntoModule
  pod 'SwiftLint'
  pod 'SwiftGen'

  pod 'JGProgressHUD'
  pod 'Charts'
  pod 'SwiftMessages'

  pod 'PodResourcesModule', :path => 'PodResourcesModule'

  target 'TestResourcesIntoModuleTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'TestResourcesIntoModuleUITests' do
    # Pods for testing
    inherit! :search_paths
  end

end
