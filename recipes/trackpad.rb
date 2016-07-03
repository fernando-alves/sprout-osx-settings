osx_defaults 'turn on tap to click' do
  domain 'com.apple.AppleMultitouchTrackpad'
  key 'Clicking'
  boolean node['trackpad']['tap_to_click']
end

osx_defaults 'set tap behaviour globaly' do
  domain 'NSGlobalDomain'
  key 'com.apple.mouse.tapBehavior'
  integer node['trackpad']['tap_to_click'] ? 1 : 0
end

execute 'set tap behaviour for current user' do
  user node['sprout']['user']
  command "defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int #{node['trackpad']['tap_to_click'] ? 1 : 0}"
end
