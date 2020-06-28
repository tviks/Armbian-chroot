echo "Update package list"
sudo apt-get update

echo "Upgrade packages"
sudo apt-get upgrade

echo "Install tools"
sudo apt-get install qemu qemu-user-static binfmt-support


echo "Create directory"
mkdir -p /mnt/armbian
