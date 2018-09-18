REM echo off
title ”%1“
echo "***Unziping***"
mkdir temp
%~dp0tools\unzip %1 "system.new.dat" "system.patch.dat" "system.transfer.list" -d %~dp0temp
echo "***processing***"
echo "***generating ***"
cd %~dp0temp
%~dp0tools\sdat2img system.transfer.list system.new.dat %~dp0\system.img
cd ..
rd /s /q %~dp0temp
echo "***unpacking***"
echo "%~dp0"

pause
%~dp0tools\unpack_ext4fs system.img %~dp0system0
echo "***unpack done***"
echo "***deleting img file***"
del /s /q system.img
:
choice /C YN /m "是否是国际版？"
if %ERRORLEVEL% == 1 goto global
if %ERRORLEVEL% == 2 goto china
:global
echo "hello world"

mkdir global
xcopy /s /e /y %~dp0system0\app\Chrome %~dp0global\system\app\Chrome\
xcopy /s /e /y %~dp0system0\app\Photos %~dp0global\system\app\Photos\
xcopy /s /e /y %~dp0system0\app\facebook-appmanager %~dp0global\system\app\facebook-appmanager\
xcopy /s /e /y %~dp0system0\app\GlobalPackageInstaller %~dp0global\system\app\GlobalPackageInstaller\
xcopy /s /e /y %~dp0system0\app\GoogleCalendarSyncAdapter %~dp0global\system\app\GoogleCalendarSyncAdapter\
xcopy /s /e /y %~dp0system0\app\GoogleExtSharede %~dp0global\system\app\GoogleExtShared\
xcopy /s /e /y %~dp0system0\app\GooglePrintRecommendationService %~dp0global\system\app\GooglePrintRecommendationService\
xcopy /s /e /y %~dp0system0\app\GoogleTTS %~dp0global\system\app\GoogleTTS\


xcopy /s /e /y %~dp0system0\priv-app\facebook-installer %~dp0global\system\priv-app\facebook-installer\
xcopy /s /e /y %~dp0system0\priv-app\facebook-services %~dp0global\system\priv-app\facebook-services\
xcopy /s /e /y %~dp0system0\priv-app\GmsCore %~dp0global\system\priv-app\GmsCore\
xcopy /s /e /y %~dp0system0\priv-app\GoogleBackupTransport %~dp0global\system\priv-app\GoogleBackupTransport\
xcopy /s /e /y %~dp0system0\priv-app\GoogleExtServices %~dp0global\system\priv-app\GoogleExtServices\
xcopy /s /e /y %~dp0system0\priv-app\GoogleFeedback %~dp0global\system\priv-app\GoogleFeedback\
xcopy /s /e /y %~dp0system0\priv-app\GoogleOneTimeInitializer %~dp0global\system\priv-app\GoogleOneTimeInitializer\
xcopy /s /e /y %~dp0system0\priv-app\GooglePackageInstaller %~dp0global\system\priv-app\GooglePackageInstaller\
xcopy /s /e /y %~dp0system0\priv-app\GooglePartnerSetup %~dp0global\system\priv-app\GooglePartnerSetup\
xcopy /s /e /y %~dp0system0\priv-app\GooglePinyinIME %~dp0global\system\priv-app\GooglePinyinIME\
xcopy /s /e /y %~dp0system0\priv-app\GoogleServicesFramework %~dp0global\system\priv-app\GoogleServicesFramework\
xcopy /s /e /y %~dp0system0\priv-app\Phonesky %~dp0global\system\priv-app\Phonesky\
xcopy /s /e /y %~dp0system0\priv-app\SetupWizard %~dp0global\system\priv-app\SetupWizard\
xcopy /s /e /y %~dp0system0\priv-app\Velvet %~dp0global\system\priv-app\Velvet\



pause
REM echo "***pushing***"
REM adb push system/app/Mipay /system/app/
REM adb push system/app/MiuiSuperMarket /system/app/
REM adb push system/app/NextPay /system/app/
REM adb push system/app/TSMClient /system/app/
REM adb push system/app/UPTsmService /system/app/
REM adb push system/app/XMPass /system/app/
REM REM rd /s /q system
REM adb push GooglePinyinIME /system/app/
REM adb kill-server -d
echo "***ALL DONE!***"
choice /C /YN /M"是否删除解压后的文件夹？Y (是) N (否)"
if %ERRORLEVEL% == 1 goto delete
if %ERRORLEVEL% == 2 goto exit
:delete
rd /s /q system0
echo  "按任意键退出..."
pause
exit
:china
echo "Fuck all the world"
mkdir china
xcopy /s /e /y %~dp0system0\app\Mipay %~dp0china\system\app\Mipay\
xcopy /s /e /y %~dp0system0\app\PaymentService %~dp0china\system\app\PaymentService\
xcopy /s /e /y %~dp0system0\app\MiuiSuperMarket %~dp0china\system\app\MiuiSuperMarket\
xcopy /s /e /y %~dp0system0\app\NextPay %~dp0china\system\app\NextPay\
xcopy /s /e /y %~dp0system0\app\TSMClient %~dp0china\system\app\TSMClient\
xcopy /s /e /y %~dp0system0\app\UPTsmService %~dp0china\system\app\UPTsmService\
xcopy /s /e /y %~dp0system0\app\DMService %~dp0china\system\app\DMService\
xcopy /s /e /y %~dp0system0\app\ExtShared %~dp0china\system\app\ExtShared\
xcopy /s /e /y %~dp0system0\app\mab %~dp0china\system\app\mab\
xcopy /s /e /y %~dp0system0\app\MetokNLP %~dp0china\system\app\MetokNLP\
xcopy /s /e /y %~dp0system0\app\MiuiContentCatcher %~dp0china\system\app\MiuiContentCatcher\
xcopy /s /e /y %~dp0system0\app\MiuiDriveMode %~dp0china\system\app\MiuiDriveMode\
xcopy /s /e /y %~dp0system0\app\MiuiVpnSdkManager %~dp0china\system\app\MiuiVpnSdkManager\
xcopy /s /e /y %~dp0system0\app\PrintRecommendationService %~dp0china\system\app\PrintRecommendationService\
xcopy /s /e /y %~dp0system0\app\SystemHelper %~dp0china\system\app\SystemHelper\

xcopy /s /e /y %~dp0system0\priv-app\ContentExtension %~dp0china\system\priv-app\ContentExtension\
xcopy /s /e /y %~dp0system0\priv-app\DMRegService %~dp0china\system\priv-app\DMRegService\
xcopy /s /e /y %~dp0system0\priv-app\MiuiSystemUI %~dp0china\system\priv-app\MiuiSystemUI\


echo "开始复制文件！"
xcopy /s /e /y %~dp0system0\etc\yellowpage %~dp0china\system\etc\yellowpage\
xcopy /s /e /y %~dp0system0\lib\libdidi_secure.so %~dp0china\system\lib
xcopy /s /e /y %~dp0system0\lib\libFaceDetectCA.so %~dp0china\system\lib
xcopy /s /e /y %~dp0system0\lib\libfmp_snpe_cv.so %~dp0china\system\lib
xcopy /s /e /y %~dp0system0\lib\libgnustl_shared.so %~dp0china\system\lib
xcopy /s /e /y %~dp0system0\lib\libksy_sr.so %~dp0china\system\lib
xcopy /s /e /y %~dp0system0\lib\libmegface.so %~dp0china\system\lib\
xcopy /s /e /y %~dp0system0\lib\libmeglive.so %~dp0china\system\lib
xcopy /s /e /y %~dp0system0\lib\libMegviiUnlock.so %~dp0china\system\lib
xcopy /s /e /y %~dp0system0\lib\libMegviiUnlock-jni-1.2.so %~dp0china\system\lib
xcopy /s /e /y %~dp0system0\lib\libSNPE.so %~dp0china\system\lib
xcopy /s /e /y %~dp0system0\lib\libttscompat.so %~dp0china\system\lib
xcopy /s /e /y %~dp0system0\lib\libttspico.so %~dp0china\system\lib
xcopy /s /e /y %~dp0system0\lib\libunlockmegcv.so %~dp0china\system\lib


xcopy /s /e /y %~dp0system0\lib64\ld-android.so %~dp0china\system\lib64
xcopy /s /e /y %~dp0system0\lib64\libaes-jni.so %~dp0china\system\lib64
xcopy /s /e /y %~dp0system0\lib64\libBaiduMapSDK_base_v4_3_2.so %~dp0china\system\lib64
xcopy /s /e /y %~dp0system0\lib64\libksy_sr.so %~dp0china\system\lib64
xcopy /s /e /y %~dp0system0\lib64\libserverkey.so %~dp0china\system\lib64
xcopy /s /e /y %~dp0system0\lib64\libtbtv3312.so %~dp0china\system\lib64
xcopy /s /e /y %~dp0system0\lib64\libTrafficRadar.so %~dp0china\system\lib64
xcopy /s /e /y %~dp0system0\lib64\libuptsmaddonmi.so %~dp0china\system\lib64
xcopy /s /e /y %~dp0system0\lib64\libweibosdkcore.so %~dp0china\system\lib64
xcopy /s /e /y %~dp0system0\lib64\libxl_stat.so %~dp0china\system\lib64
xcopy /s /e /y %~dp0system0\lib64\libxl_thunder_sdk.so %~dp0china\system\lib64
xcopy /s /e /y %~dp0system0\lib64\libxmpass_sdk_patcher.so %~dp0china\system\lib64
xcopy /s /e /y %~dp0system0\lib64\xmpass_libweibosdkcore.so %~dp0china\system\lib64

copy %~dp0system0\build.prop %~dp0chinaprop\
echo "***ALL DONE!***"
choice /YN /M"是否删除解压后的文件夹？Y (是) N (否)"
if %ERRORLEVEL% == 1 goto delete
if %ERRORLEVEL% == 2 goto exit
:exit
echo "已选择保存，将在10S后退出..."
timeout /t 10 

wait



