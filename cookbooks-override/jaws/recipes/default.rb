windows_reboot 60 do
  action :nothing
end

windows_package "Freedom Scientific FSReader 2.0" do
  source "http://files.freedomscientific.com/WebFiles/JAWS/J13.0.1005-64bit.exe"
  installer_type :custom
  options "/type silent"
  action :install
  notifies :request, "windows_reboot[60]"
end
