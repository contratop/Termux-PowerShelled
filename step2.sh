# step 2

apt update && apt upgrade -y
apt install curl -y
apt install wget -y
apt install libicu-dev -y
# Download the powershell '.tar.gz' archive
curl -L -o powershell.tar.gz "https://github.com/PowerShell/PowerShell/releases/download/v7.2.6/powershell-7.2.6-linux-arm64.tar.gz"

# Create the target folder where powershell will be placed
mkdir -p /opt/microsoft/powershell/7

# Expand powershell to the target folder
tar zxf powershell.tar.gz -C /opt/microsoft/powershell/7

# Set execute permissions
chmod +x /opt/microsoft/powershell/7/pwsh

# Create the symbolic link that points to pwsh
ln -s /opt/microsoft/powershell/7/pwsh /usr/bin/pwsh

rm step2.sh
rm powershell.tar.gz