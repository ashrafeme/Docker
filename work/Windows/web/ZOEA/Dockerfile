# Image Based on windowsservercore for ZOEA website
# Copy Right ZOLL Data
FROM microsoft/aspnet:4.6.2

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

#ARG 
ARG physicalPath=C:\ZOEA
ARG siteName=ZOEA
#  turns off the DNS cache in Windows 
#Docker has its own DNS server which is how containers can find each other by name.
#In Windows the DNS cache is too aggressive,and you want every lookup to come back 
#to Docker so when containers are replaced you get the latest IP address.
#
RUN Set-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name ServerPriorityTimeLimit -Value 0 -Type DWord

# Remove the default website
RUN Remove-Website -Name 'Default Web Site';\
    #Create New Directory ZOEA
    New-Item -Path ${physicalPath} -Type Directory;\
    #Create New Website for ZOEA
    New-Website -Name ${siteName} -PhysicalPath ${physicalPath} -Port 80 -Force




