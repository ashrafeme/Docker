FROM microsoft/iis:nanoserver

RUN powershell -Command Add-WindowsFeature NET-Framework-45-ASPNET
RUN powershell -Command Add-WindowsFeature Web-Asp-Net45

# Next, this Dockerfile creates a directory for your application
#RUN mkdir C:\site

#RUN powershell -NoProfile -Command \
   
 #   New-IISSite -Name "Site" -PhysicalPath C:\site -BindingInformation "*:8000:"

#EXPOSE 80

#COPY C:\Workspaces\toPublishSites\wa4 \inetpub\wwwroot\wa4

