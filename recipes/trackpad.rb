osx_defaults 'turn on tap to click' do
  domain 'com.apple.AppleMultitouchTrackpad'
  key 'Clicking'
  boolean boolean node['trackpad']['tap_to_click']
end

osx_defaults 'turn on three finger drag' do
  domain 'com.apple.AppleMultitouchTrackpad'
  key 'TrackpadThreeFingerDrag'
  boolean boolean node['trackpad']['three_finger_drag']
end
