Vagrant.configure(2) do |config|
  # configure our base box
  config.vm.box = "hashicorp/precise64"
  # run our OpenDJ installation script
  config.vm.provision :shell, path: "install/installOpenDJ.sh"
end
