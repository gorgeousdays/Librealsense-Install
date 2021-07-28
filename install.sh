# !/bin/bash
# Installs the Intel Realsense library librealsense on a Jetson Nano Development Kit
# Jetpack4.4
# The installation is from a RealSense Debian repository
# MIT License
# https://github.com/IntelRealSense/librealsense/blob/master/doc/installation_jetson.md
# https://github.com/JetsonHacksNano/installLibrealsense


# Step1.Register the server's public key:
# Try the following command

# sudo apt-key adv --keyserver keys.gnupg.net --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE

# Step1.Register the server's public key: 
# Sometimes we can't get the key form website successfully.And we can add it in loacl environment

sudo touch spotify.pgp
echo "-----BEGIN PGP PUBLIC KEY BLOCK-----
Comment: Hostname: 
Version: Hockeypuck ~unreleased

xsBNBFpUqDEBCADuIoVeNfgr3owUxn0keHq9OPak+Phxk4ye/paDZ5JZ6D407GXt
QI0Ct6TVj2J9tWkcsK+G4DDxOQDPLIMf+mgjJYX0jwt6ruminSIhhp5fvh3Ol33e
X/2P01Iul/GhVlpg6MspnIiJOnv0okYNbOzSLdgxpmTk6dyxP49pHbLdzI7JugsS
tJljQgBeBP6pNlzBVTDvEvP2cXnqTVFxm2skiw9hyN2o2CXjGhGOz6Z5L6iOf/ee
8beYHomkEaaoNXc3Z+V5KzSg4uM1uYzqecxQ1InhrsYfb0ETjvAeJiNp1y+sSm+O
CDJWNxJq8tNSFrwvKPZ+e6cvv15yN6hChkkRABEBAAHNNyJDTiA9IEludGVsKFIp
IEludGVsKFIpIFJlYWxzZW5zZSIsIE89SW50ZWwgQ29ycG9yYXRpb27CwH4EEwEI
ACgFAlpUqDECGwMFCRLNVIAGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEMiz
pVpvPvzeGIAIAJiwFHVL/iqnDRVfzcI/Nm8gtoMDV2hU6QGcNkbwZn5JpoIyGGPh
zR01rWYX6hvt9BzzZljW7MF6LPnfi0IXzZ8ml/wFx0GwF9u0acCkxCZr4aIReO4W
t0Pe8u6uAIyhNdn9a4yacxFPdeU2W2w1xDTRUidiDO4V9vCllK4VGGHoBLi9ua6C
qIZrdnRvX3ire6WybLz33JyDbEK9SlKqs8kwyz4uq9a0sry79oTQiK4jAgLxKGq/
JA5ixemTnVrVIa+CZgUHqMW0SrgZeJDVMh7x2ZPGilSxmPDMNniEd5mxrFetFrzy
quh0EmUG2XwVM89VNH4Y45USyqal4RhISMw=
=oqan
-----END PGP PUBLIC KEY BLOCK-----"  >spotify.pgp

sudo apt-key add spotify.pgp

sudo rm -f spotify.pgp

# Step2.Add apt-respository, Ubuntu 18 is bionic and Ubuntu 16 is xenial:
sudo add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo bionic main" -u

sudo apt-get update

# Step3.Install the SDK:
sudo apt-get install librealsense2-utils
sudo apt-get install librealsense2-dev