ruby_block 'Show User Home In Sidebar' do
  username = ENV['SUDO_USER']
  block do
    # rubocop:disable LineLength
    cmd = Mixlib::ShellOut.new(
      "osascript -e '
        tell application \"Finder\"
          activate
          delay 1
          set user_home to folder \"#{username}\" of folder \"Users\" of Startup disk
          select user_home
          delay 1
          tell application \"System Events\" to tell process \"Finder\" to keystroke \"t\" using {command down, control down}
          close window 1
        end tell'"
    )
    # rubocop:enable LineLength
    cmd.run_command
  end
end
